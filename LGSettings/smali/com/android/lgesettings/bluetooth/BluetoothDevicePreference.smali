.class public final Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;,
        Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;
    }
.end annotation


# static fields
.field private static final LG_DBG:Z

.field private static sDimAlpha:I


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field mHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;

.field private mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mOnekeyConnectionCheckHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;

.field private final mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

.field private remotedevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "persist.service.btui.debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->LG_DBG:Z

    .line 81
    const/high16 v0, -0x8000

    sput v0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    .locals 6
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    .line 157
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mOnekeyConnectionCheckHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;

    .line 159
    sget v2, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_0

    .line 160
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 161
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 162
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 165
    .end local v1           #outValue:Landroid/util/TypedValue;
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 166
    invoke-static {p1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 167
    .local v0, bluetoothManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_1

    .line 168
    const-string v2, "BluetoothDevicePreference"

    const-string v3, "Can\'t get bluetoothManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    .line 173
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 179
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bluetooth.LGBluetoothHandsfreePickerActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bluetooth.DevicePickerActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    const v2, 0x7f0400e7

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 193
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 194
    const-string v2, "BluetoothDevicePreference"

    const-string v3, "[BTUI] BluetoothDevicePreference Device Not connected. Send Check Connecttion Status Message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;

    .line 196
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;->removeMessages(I)V

    .line 198
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$CheckConnectionStateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 203
    :cond_3
    const-string v2, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v2}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 204
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mOnekeyConnectionCheckHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;

    if-nez v2, :cond_4

    .line 205
    new-instance v2, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mOnekeyConnectionCheckHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;

    .line 209
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 10

    .prologue
    const v9, 0x7f080087

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 465
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 466
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 468
    const v5, 0x7f080093

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    const/4 v2, 0x0

    .line 475
    .local v2, message:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 476
    :cond_1
    new-array v5, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u200f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 482
    :goto_0
    const v5, 0x7f080086

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V

    .line 490
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/lgesettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 492
    return-void

    .line 479
    .end local v1           #disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v4           #title:Ljava/lang/String;
    :cond_2
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-virtual {v0, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private askLEDisconnect()V
    .locals 8

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 496
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    .line 499
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 500
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 501
    const v5, 0x7f080093

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 503
    :cond_0
    const v5, 0x7f080087

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, message:Ljava/lang/String;
    const v5, 0x7f080086

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V

    .line 525
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/lgesettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 526
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 12

    .prologue
    .line 687
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 690
    .local v2, btClass:Landroid/bluetooth/BluetoothClass;
    const-string v9, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v9}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 691
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v9}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v9

    iput-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 692
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    iput-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 693
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    iput-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->isDeviceConnected()Z

    move-result v5

    .line 699
    .local v5, isConnected:Z
    if-eqz v2, :cond_d

    .line 700
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 745
    :cond_1
    const-string v9, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v9}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 746
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v10, v10, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v9, v10, :cond_13

    .line 747
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 748
    const-string v9, "BluetoothDevicePreference(Onekey)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onClicked remote : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RCB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "100"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 750
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->isOnekeyDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    if-eqz v9, :cond_8

    const v9, 0x7f02018a

    .line 832
    :goto_0
    return v9

    .line 706
    :sswitch_0
    if-eqz v5, :cond_2

    const v9, 0x7f02017c

    goto :goto_0

    :cond_2
    const v9, 0x7f02017b

    goto :goto_0

    .line 714
    :sswitch_1
    if-eqz v5, :cond_3

    const v9, 0x7f02016d

    goto :goto_0

    :cond_3
    const v9, 0x7f02016c

    goto :goto_0

    .line 722
    :sswitch_2
    invoke-static {v2, v5}, Lcom/android/lgesettings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v9

    goto :goto_0

    .line 730
    :sswitch_3
    if-eqz v5, :cond_4

    const v9, 0x7f020178

    goto :goto_0

    :cond_4
    const v9, 0x7f020177

    goto :goto_0

    .line 735
    :sswitch_4
    sget-boolean v9, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->LG_DBG:Z

    if-nez v9, :cond_5

    const-string v9, "LGBT_CNDTL_SCENARIO_GAP_CARKIT_ICON"

    invoke-static {v9}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 736
    :cond_5
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    .line 737
    .local v3, devClass:I
    const/16 v9, 0x408

    if-eq v3, v9, :cond_6

    const/16 v9, 0x420

    if-ne v3, v9, :cond_1

    .line 739
    :cond_6
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->isDeviceConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    const v9, 0x7f02016b

    goto :goto_0

    :cond_7
    const v9, 0x7f02016a

    goto :goto_0

    .line 750
    .end local v3           #devClass:I
    :cond_8
    const v9, 0x7f020189

    goto :goto_0

    .line 752
    :cond_9
    if-eqz v5, :cond_a

    const v9, 0x7f020184

    goto :goto_0

    :cond_a
    const v9, 0x7f020183

    goto :goto_0

    .line 755
    :cond_b
    if-eqz v5, :cond_c

    const v9, 0x7f020184

    goto :goto_0

    :cond_c
    const v9, 0x7f020183

    goto :goto_0

    .line 766
    :cond_d
    const-string v9, "BluetoothDevicePreference"

    const-string v10, "mBtClass is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v9, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v9}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 769
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v10, v10, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v9, v10, :cond_13

    .line 770
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 771
    const-string v9, "BluetoothDevicePreference(Onekey)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onClicked remote : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RCB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "100"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 773
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->isOnekeyDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    if-eqz v9, :cond_e

    const v9, 0x7f02018a

    goto/16 :goto_0

    :cond_e
    const v9, 0x7f020189

    goto/16 :goto_0

    .line 775
    :cond_f
    if-eqz v5, :cond_10

    const v9, 0x7f020184

    goto/16 :goto_0

    :cond_10
    const v9, 0x7f020183

    goto/16 :goto_0

    .line 778
    :cond_11
    if-eqz v5, :cond_12

    const v9, 0x7f020184

    goto/16 :goto_0

    :cond_12
    const v9, 0x7f020183

    goto/16 :goto_0

    .line 785
    :cond_13
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    .line 786
    .local v7, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    .line 788
    .local v6, profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v6, v2, v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v8

    .line 793
    .local v8, resId:I
    if-eqz v8, :cond_14

    move v9, v8

    .line 794
    goto/16 :goto_0

    .line 797
    .end local v6           #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    .end local v8           #resId:I
    :cond_15
    if-eqz v2, :cond_19

    .line 798
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 803
    if-eqz v5, :cond_16

    const v9, 0x7f020172

    goto/16 :goto_0

    :cond_16
    const v9, 0x7f020171

    goto/16 :goto_0

    .line 807
    :cond_17
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 812
    if-eqz v5, :cond_18

    const v9, 0x7f020174

    goto/16 :goto_0

    :cond_18
    const v9, 0x7f020173

    goto/16 :goto_0

    .line 822
    :cond_19
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBackupProfiles()Ljava/util/List;

    move-result-object v1

    .line 824
    .local v1, backupProfiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    .line 825
    .local v0, backupProfile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v0, v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v8

    .line 826
    .restart local v8       #resId:I
    if-eqz v8, :cond_1a

    move v9, v8

    .line 827
    goto/16 :goto_0

    .line 832
    .end local v0           #backupProfile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    .end local v8           #resId:I
    :cond_1b
    if-eqz v5, :cond_1c

    const v9, 0x7f020184

    goto/16 :goto_0

    :cond_1c
    const v9, 0x7f020183

    goto/16 :goto_0

    .line 700
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_4
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 8

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 606
    .local v1, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    const/4 v6, 0x0

    .line 607
    .local v6, profileConnected:Z
    const/4 v0, 0x0

    .line 608
    .local v0, a2dpNotConnected:Z
    const/4 v3, 0x0

    .line 610
    .local v3, headsetNotConnected:Z
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    .line 611
    .local v5, profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 613
    .local v2, connectionStatus:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 616
    :pswitch_0
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v7

    .line 659
    .end local v2           #connectionStatus:I
    .end local v5           #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v7

    .line 619
    .restart local v2       #connectionStatus:I
    .restart local v5       #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    :pswitch_1
    const/4 v6, 0x1

    .line 620
    goto :goto_0

    .line 640
    .end local v2           #connectionStatus:I
    .end local v5           #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    :cond_0
    if-eqz v6, :cond_4

    .line 641
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 642
    const v7, 0x7f08008d

    goto :goto_1

    .line 643
    :cond_1
    if-eqz v0, :cond_2

    .line 644
    const v7, 0x7f08008c

    goto :goto_1

    .line 645
    :cond_2
    if-eqz v3, :cond_3

    .line 646
    const v7, 0x7f08008b

    goto :goto_1

    .line 648
    :cond_3
    const v7, 0x7f08008a

    goto :goto_1

    .line 652
    :cond_4
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 659
    const/4 v7, 0x0

    goto :goto_1

    .line 654
    :pswitch_2
    const v7, 0x7f080092

    goto :goto_1

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 652
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
    .end packed-switch
.end method

.method private getOnekeyConnectionSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .parameter "device"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 569
    const/4 v1, 0x0

    .line 571
    .local v1, connectionStatus:I
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 572
    .local v0, bondState:I
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 573
    const-string v3, "BluetoothDevicePreference(Onekey)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOnekeyConnectionSummary bondState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    packed-switch v0, :pswitch_data_0

    .line 599
    :cond_0
    :goto_0
    return v2

    .line 576
    :pswitch_0
    const-string v3, "BluetoothDevicePreference(Onekey)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOnekeyConnectionSummary getLeconnstatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v5, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v4, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v3, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-ne v3, v6, :cond_1

    .line 579
    const/4 v1, 0x2

    .line 580
    const-string v2, "BluetoothDevicePreference(Onekey)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOnekeyConnectionSummary : STATE_CONNECTED / message :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v2

    goto :goto_0

    .line 582
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v3, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v4, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 584
    const/4 v1, 0x3

    .line 585
    const-string v2, "BluetoothDevicePreference(Onekey)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOnekeyConnectionSummary : STATE_DISCONNECTING  / message :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v2

    goto/16 :goto_0

    .line 587
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v3, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v3, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v6, v3, :cond_0

    .line 589
    const/4 v1, 0x1

    .line 590
    const-string v2, "BluetoothDevicePreference(Onekey)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOnekeyConnectionSummary : STATE_CONNECTING  / message :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v2

    goto/16 :goto_0

    .line 596
    :pswitch_1
    const v2, 0x7f080092

    goto/16 :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pair()V
    .locals 4

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->checkBluetoothPairingAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "MDM Block Pairing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    const-string v0, "service.btui.gap.pairByLocal"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801a0

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->showError(Landroid/content/Context;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 357
    instance-of v0, p1, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 359
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 362
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 841
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 343
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 344
    :cond_0
    const/4 v0, 0x0

    .line 346
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDeviceConnected()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    return v0
.end method

.method isOnekeyBusy(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    .line 554
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 555
    .local v0, bondState:I
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 556
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v2, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v3, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v1

    .line 560
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v2, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v2, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 565
    :cond_2
    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOnekeyDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 670
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 671
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v2, v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG RCB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 674
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-ne v1, v0, :cond_0

    .line 676
    const-string v1, "BluetoothDevicePreference(Onekey)"

    const-string v2, "isOnekeyDeviceConnected : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_0
    return v0

    .line 681
    :cond_0
    const-string v0, "BluetoothDevicePreference(Onekey)"

    const-string v1, "isOnekeyDeviceConnected : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 318
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 323
    const v1, 0x7f0a0037

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 324
    .local v0, deviceDetails:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 331
    .end local v0           #deviceDetails:Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 332
    return-void

    .line 327
    .restart local v0       #deviceDetails:Landroid/widget/ImageView;
    :cond_2
    sget v1, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 339
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0xc

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 367
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 370
    .local v0, bondState:I
    const-string v3, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v3}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 371
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 372
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    .line 374
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_2

    .line 375
    :cond_0
    const-string v3, "BluetoothDevicePreference"

    const-string v4, "mLGSmartOneKeyDevice or remotedevice : null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 377
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v4, v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LG RCB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v5, :cond_9

    .line 379
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 380
    if-ne v0, v6, :cond_3

    .line 381
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->pair()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v2

    .line 449
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevicePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_3
    if-ne v0, v7, :cond_1

    .line 383
    :try_start_1
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-ne v3, v8, :cond_4

    .line 385
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->askLEDisconnect()V

    goto :goto_0

    .line 386
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-nez v3, :cond_6

    .line 389
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 390
    const-string v3, "BluetoothDevicePreference(Onekey)"

    const-string v4, "fetchUuidsWithSdp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 393
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 394
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->disconnectedOnekeyAddressChangeToConnectingStatus(Ljava/lang/String;)V

    .line 397
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mOnekeyConnectionCheckHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;

    if-nez v3, :cond_5

    .line 398
    const-string v3, "BluetoothDevicePreference"

    const-string v4, "mOnekeyConnectionCheckHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    if-eqz v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto/16 :goto_0

    .line 400
    :cond_5
    const-string v3, "BluetoothDevicePreference"

    const-string v4, "MSG_CHECK_ONEKEY_CONNECTON_STATE send to handler"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mOnekeyConnectionCheckHandler:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;

    const/4 v4, 0x2

    const-wide/16 v5, 0x2ee0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 409
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-eq v3, v8, :cond_7

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOtherDevicesFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v4, 0x7

    if-ne v3, v4, :cond_8

    .line 411
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 412
    .local v1, context:Landroid/content/Context;
    const-string v3, "BluetoothDevicePreference(Onekey)"

    const-string v4, "Already connected or connecting other device. Cannot connect second OneKeyDevice"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const v3, 0x7f0815b3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 415
    .end local v1           #context:Landroid/content/Context;
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 417
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setOnekeyDeviceAddressToList(Ljava/lang/String;Z)V

    .line 418
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 419
    const-string v3, "BluetoothDevicePreference(Onekey)"

    const-string v4, "fetchUuidsWithSdp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 421
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 422
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->disconnectedOnekeyAddressChangeToConnectingStatus(Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    if-eqz v3, :cond_1

    .line 425
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto/16 :goto_0

    .line 430
    :cond_9
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v4, v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v3, v4, :cond_b

    .line 431
    if-ne v0, v6, :cond_a

    .line 432
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->pair()V

    goto/16 :goto_0

    .line 433
    :cond_a
    if-ne v0, v7, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0815b4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 438
    :cond_b
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 439
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    goto/16 :goto_0

    .line 440
    :cond_c
    if-ne v0, v7, :cond_d

    .line 441
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_0

    .line 442
    :cond_d
    if-ne v0, v6, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->pair()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 452
    :cond_e
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 453
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    goto/16 :goto_0

    .line 454
    :cond_f
    if-ne v0, v7, :cond_10

    .line 455
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_0

    .line 456
    :cond_10
    if-ne v0, v6, :cond_1

    .line 457
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->pair()V

    goto/16 :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 239
    new-instance v4, Landroid/text/SpannableString;

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 240
    .local v4, titleText:Landroid/text/Spannable;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 241
    .local v2, sps:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->isDeviceConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 242
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/16 v8, 0x2e

    const/16 v9, 0x99

    const/16 v10, 0xfb

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v8

    invoke-virtual {v2, v7, v6, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 243
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v8

    invoke-virtual {v2, v7, v6, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 244
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    :goto_0
    const/4 v3, 0x0

    .line 254
    .local v3, summaryResId:I
    const-string v7, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v7}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 256
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 257
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    .line 260
    :try_start_0
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v7, :cond_2

    .line 261
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "remotedevice is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 282
    :goto_1
    if-eqz v3, :cond_5

    .line 283
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 288
    :goto_2
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v1

    .line 289
    .local v1, iconResId:I
    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 296
    :cond_0
    const-string v7, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v7}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 297
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v8, v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LG RCB"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v7, v5, :cond_7

    .line 299
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->isOnekeyBusy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-nez v7, :cond_6

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 312
    :goto_4
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 313
    return-void

    .line 246
    .end local v1           #iconResId:I
    .end local v3           #summaryResId:I
    :cond_1
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    .restart local v3       #summaryResId:I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v8, v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LG RCB"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v7, v5, :cond_3

    .line 266
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v7}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getOnekeyConnectionSummary(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    goto :goto_1

    .line 268
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "remotedevice is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 275
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v3

    goto :goto_1

    .line 285
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .restart local v1       #iconResId:I
    :cond_6
    move v5, v6

    .line 299
    goto :goto_3

    .line 301
    :cond_7
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v7

    if-nez v7, :cond_8

    :goto_5
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    goto :goto_4

    :cond_8
    move v5, v6

    goto :goto_5

    .line 304
    :cond_9
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v7

    if-nez v7, :cond_a

    :goto_6
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    goto :goto_4

    :cond_a
    move v5, v6

    goto :goto_6
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 222
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 223
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 227
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 217
    return-void
.end method
