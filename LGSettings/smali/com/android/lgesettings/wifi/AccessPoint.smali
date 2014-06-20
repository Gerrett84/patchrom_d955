.class Lcom/android/lgesettings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/AccessPoint$1;,
        Lcom/android/lgesettings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final HS20:Z

.field public static final STATE_NONE:[I

.field public static final STATE_SECURED:[I

.field private static final mLgeKtCm:Z


# instance fields
.field bssid:Ljava/lang/String;

.field hs20Supported:Z

.field private hs20WifiInfo:Landroid/net/wifi/WifiInfo;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field public mPriIndex:I

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field public mState:Landroid/net/NetworkInfo$DetailedState;

.field private mTitle:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field networkId:I

.field pskType:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    new-array v2, v0, [I

    const/high16 v3, 0x7f01

    aput v3, v2, v1

    sput-object v2, Lcom/android/lgesettings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 61
    new-array v2, v1, [I

    sput-object v2, Lcom/android/lgesettings/wifi/AccessPoint;->STATE_NONE:[I

    .line 99
    const-string v2, "wifi.lge.kt.cm"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/lgesettings/wifi/AccessPoint;->mLgeKtCm:Z

    .line 103
    const-string v0, "wlan.lge.passpoint"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/wifi/AccessPoint;->HS20:Z

    return-void

    :cond_0
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 86
    sget-object v0, Lcom/android/lgesettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->pskType:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mPriIndex:I

    .line 104
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20Supported:Z

    .line 223
    const v0, 0x7f04010c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 224
    invoke-direct {p0, p2}, Lcom/android/lgesettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 225
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->refresh()V

    .line 226
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 86
    sget-object v0, Lcom/android/lgesettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->pskType:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mPriIndex:I

    .line 104
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20Supported:Z

    .line 216
    const v0, 0x7f04010c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 217
    invoke-direct {p0, p2}, Lcom/android/lgesettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 218
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->refresh()V

    .line 219
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "savedState"

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 86
    sget-object v0, Lcom/android/lgesettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->pskType:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mPriIndex:I

    .line 104
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20Supported:Z

    .line 230
    const v0, 0x7f04010c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 232
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 233
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 236
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 240
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 241
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 245
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/lgesettings/wifi/AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 200
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 201
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 202
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 203
    sget-object v2, Lcom/android/lgesettings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    .line 210
    :goto_0
    return-object v2

    .line 204
    :cond_0
    if-eqz v1, :cond_1

    .line 205
    sget-object v2, Lcom/android/lgesettings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 206
    :cond_1
    if-eqz v0, :cond_2

    .line 207
    sget-object v2, Lcom/android/lgesettings/wifi/AccessPoint$PskType;->WPA:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 209
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v2, Lcom/android/lgesettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x4

    .line 143
    :goto_0
    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x5

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    const/4 v0, 0x2

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    const/4 v0, 0x3

    goto :goto_0

    .line 143
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "config"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 115
    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    const/4 v0, 0x4

    goto :goto_0

    .line 121
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    const/4 v0, 0x5

    goto :goto_0

    .line 125
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static geths20(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 148
    sget-boolean v1, Lcom/android/lgesettings/wifi/AccessPoint;->HS20:Z

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "HS20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    const-string v1, "Settings.AccessPoint"

    const-string v2, "[PASSPOINT] SystemProperties for passpoint does not set."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 257
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 259
    invoke-static {p1}, Lcom/android/lgesettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    .line 260
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    .line 261
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    .line 262
    iput-object p1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 265
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mPriIndex:I

    .line 266
    const-string v0, "Settings.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessPoint loadConfig config.priority : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mPriIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 257
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 322
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 323
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 324
    invoke-static {p1}, Lcom/android/lgesettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    .line 325
    iget v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 326
    iget v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 327
    invoke-static {p1}, Lcom/android/lgesettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->pskType:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    .line 328
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    .line 329
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    .line 331
    invoke-static {p1}, Lcom/android/lgesettings/wifi/AccessPoint;->geths20(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20Supported:Z

    .line 332
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20Supported:Z

    if-eqz v0, :cond_1

    .line 333
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/AccessPoint;->loadhs20Result(Landroid/net/wifi/ScanResult;)V

    .line 336
    :cond_1
    iput-object p1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 337
    return-void

    .line 325
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadhs20Result(Landroid/net/wifi/ScanResult;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 271
    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20Supported:Z

    if-eqz v2, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    .local v0, context:Landroid/content/Context;
    const-string v2, "Settings.AccessPoint"

    const-string v3, "[PASSPOINT] Find the passpoint device in Scan results"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 277
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20WifiInfo:Landroid/net/wifi/WifiInfo;

    .line 281
    iget-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20WifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20WifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .line 285
    .local v1, supState:Landroid/net/wifi/SupplicantState;
    sget-object v2, Lcom/android/lgesettings/wifi/AccessPoint$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 312
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown supplicant state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #supState:Landroid/net/wifi/SupplicantState;
    :cond_1
    :goto_0
    return-void

    .line 292
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #supState:Landroid/net/wifi/SupplicantState;
    :pswitch_0
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supplicant state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20WifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20WifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20WifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    .line 304
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->getmLastState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 305
    const-string v2, "Settings.AccessPoint"

    const-string v3, "[PASSPOINT] Matching the Supplicant BSSID with Scan BSSID "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "valid Supplicant state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PASSPOINT] hsWifiInfo.getNetworkId  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20WifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private refresh()V
    .locals 5

    .prologue
    .line 507
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 510
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_0

    .line 511
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v3}, Lcom/android/lgesettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 563
    :goto_0
    return-void

    .line 512
    :cond_0
    iget v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 513
    const v3, 0x7f0802d0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 514
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 515
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 524
    :pswitch_0
    const v3, 0x7f0802cd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 517
    :pswitch_1
    const v3, 0x7f0802cf

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 521
    :pswitch_2
    const v3, 0x7f0802ce

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    .line 529
    const v3, 0x7f0802cc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_3
    iget v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_4

    .line 534
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 537
    const v3, 0x7f081641

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, securityStrFormat:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_4
    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->hs20Supported:Z

    if-eqz v3, :cond_5

    .line 550
    const-string v3, "(Via Passpoint)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_6

    .line 555
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 556
    const v3, 0x7f0802d1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 541
    :cond_7
    const v3, 0x7f081642

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #securityStrFormat:Ljava/lang/String;
    goto :goto_1

    .line 558
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_8
    const v3, 0x7f0802d2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 493
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 494
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 496
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 498
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v6, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 378
    instance-of v4, p1, Lcom/android/lgesettings/wifi/AccessPoint;

    if-nez v4, :cond_1

    move v2, v3

    .line 428
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 381
    check-cast v1, Lcom/android/lgesettings/wifi/AccessPoint;

    .line 383
    .local v1, other:Lcom/android/lgesettings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v1, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v4, v5, :cond_2

    .line 384
    iget-object v4, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 387
    :cond_2
    iget v4, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    iget v5, v1, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_3

    .line 388
    iget v4, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 391
    :cond_3
    const-string v4, "ollehWiFi"

    iget-object v5, v1, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/lgesettings/wifi/AccessPoint;->mLgeKtCm:Z

    if-eqz v4, :cond_5

    .line 392
    const-string v4, "ollehWiFi"

    iget-object v5, p0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 393
    iget v4, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v3

    .line 395
    goto :goto_0

    .line 399
    :cond_5
    iget v4, p0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    iget v5, v1, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_6

    .line 400
    iget v4, p0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-ne v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 404
    :cond_6
    iget v4, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mPriIndex:I

    iget v5, v1, Lcom/android/lgesettings/wifi/AccessPoint;->mPriIndex:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_7

    .line 405
    iget v4, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mPriIndex:I

    if-ne v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 411
    :cond_7
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 412
    iget-object v2, v1, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v4, "VerizonWiFi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    .line 413
    goto :goto_0

    .line 423
    :cond_8
    iget v2, v1, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    iget v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    sub-int v0, v2, v3

    .line 424
    .local v0, difference:I
    if-eqz v0, :cond_9

    move v2, v0

    .line 425
    goto/16 :goto_0

    .line 428
    :cond_9
    iget-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 624
    iget v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 631
    :goto_0
    return-void

    .line 628
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 629
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/lgesettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 474
    iget v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 475
    const/4 v0, -0x1

    .line 477
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .parameter "concise"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 195
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 166
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0802da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0802e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 169
    :pswitch_1
    sget-object v1, Lcom/android/lgesettings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->pskType:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 181
    if-eqz p1, :cond_4

    const v1, 0x7f0802d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 171
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0802d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0802dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 174
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0802d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0802de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 177
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0802d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0802df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 181
    :cond_4
    const v1, 0x7f0802e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 185
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0802d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0802dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 189
    :pswitch_6
    const v1, 0x7f081705

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 191
    :pswitch_7
    const v1, 0x7f081706

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 195
    :cond_6
    const v1, 0x7f0802db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 169
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const v3, -0xffff01

    .line 341
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 342
    const v1, 0x7f0a023a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 343
    .local v0, signal:Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 344
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    :goto_0
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mTitle:Landroid/widget/TextView;

    .line 355
    sget-boolean v1, Lcom/android/lgesettings/wifi/AccessPoint;->mLgeKtCm:Z

    if-eqz v1, :cond_6

    .line 356
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_3

    .line 358
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    :cond_0
    :goto_1
    return-void

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 347
    const v1, 0x7f0203be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    iget v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/lgesettings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/lgesettings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_2

    .line 359
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_4

    .line 360
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 361
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_5

    .line 362
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 363
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mTitle:Landroid/widget/TextView;

    const v2, -0x8100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 367
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mTitle:Landroid/widget/TextView;

    const v2, -0xbc502b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 248
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 250
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 251
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, reorder:Z
    if-eqz p1, :cond_5

    iget v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 454
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 456
    :goto_0
    iget v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    const/16 v2, -0xc8

    if-eq v1, v2, :cond_1

    .line 457
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    .line 459
    :cond_1
    iput-object p1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 460
    iput-object p2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 461
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->refresh()V

    .line 468
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 469
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 471
    :cond_3
    return-void

    .line 454
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 462
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_2

    .line 463
    const/4 v0, 0x1

    .line 464
    iput-object v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 465
    iput-object v3, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 466
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/lgesettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 433
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 435
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->mRssi:I

    .line 436
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->notifyChanged()V

    .line 441
    .end local v0           #oldLevel:I
    :cond_0
    iget v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 442
    invoke-static {p1}, Lcom/android/lgesettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/wifi/AccessPoint;->pskType:Lcom/android/lgesettings/wifi/AccessPoint$PskType;

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/AccessPoint;->refresh()V

    .line 445
    const/4 v1, 0x1

    .line 447
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
