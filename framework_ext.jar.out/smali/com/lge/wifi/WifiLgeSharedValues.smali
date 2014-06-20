.class public Lcom/lge/wifi/WifiLgeSharedValues;
.super Ljava/lang/Object;
.source "WifiLgeSharedValues.java"


# static fields
.field private static final LGE_EAP_AUTH_INFO:Ljava/lang/String; = "/data/misc/wifi/lge_eap_info"

.field private static final TAG:Ljava/lang/String; = "WifiLgeSharedValues"

.field private static mIsDlnaReady2:Z

.field private static mUnicodeSSID:Z

.field private static mWifiLgeSharedValues:Lcom/lge/wifi/WifiLgeSharedValues;


# instance fields
.field private mP2pState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wifi/WifiLgeSharedValues;->mWifiLgeSharedValues:Lcom/lge/wifi/WifiLgeSharedValues;

    .line 21
    sput-boolean v1, Lcom/lge/wifi/WifiLgeSharedValues;->mIsDlnaReady2:Z

    .line 27
    sput-boolean v1, Lcom/lge/wifi/WifiLgeSharedValues;->mUnicodeSSID:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/WifiLgeSharedValues;->mP2pState:I

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/lge/wifi/WifiLgeSharedValues;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/wifi/WifiLgeSharedValues;->mWifiLgeSharedValues:Lcom/lge/wifi/WifiLgeSharedValues;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/lge/wifi/WifiLgeSharedValues;

    invoke-direct {v0}, Lcom/lge/wifi/WifiLgeSharedValues;-><init>()V

    sput-object v0, Lcom/lge/wifi/WifiLgeSharedValues;->mWifiLgeSharedValues:Lcom/lge/wifi/WifiLgeSharedValues;

    .line 54
    :cond_0
    sget-object v0, Lcom/lge/wifi/WifiLgeSharedValues;->mWifiLgeSharedValues:Lcom/lge/wifi/WifiLgeSharedValues;

    return-object v0
.end method

.method public static getLgeEapAuthInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, temp:Ljava/lang/String;
    const/4 v2, 0x0

    .line 104
    .local v2, line:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/misc/wifi/lge_eap_info"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 105
    .local v0, br:Ljava/io/BufferedReader;
    const-string v3, ""

    .line 106
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0           #br:Ljava/io/BufferedReader;
    :goto_1
    return-object v3

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "WifiLgeSharedValues"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSmomo - error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setLgeEapAuthInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 118
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/misc/wifi/lge_eap_info"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 121
    .local v0, bw:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 123
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0           #bw:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiLgeSharedValues"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSmomo - error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getDlnaEnabled()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/lge/wifi/WifiLgeSharedValues;->mIsDlnaReady2:Z

    return v0
.end method

.method public getP2pWifiState()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/lge/wifi/WifiLgeSharedValues;->mP2pState:I

    return v0
.end method

.method public getUnicodeSSID()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/lge/wifi/WifiLgeSharedValues;->mUnicodeSSID:Z

    return v0
.end method

.method public setDlnaEnabled(Z)V
    .locals 3
    .parameter "input"

    .prologue
    .line 63
    const-string v0, "WifiLgeSharedValues"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDLNAEnabled() - IsDlnaReady2 is set :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sput-boolean p1, Lcom/lge/wifi/WifiLgeSharedValues;->mIsDlnaReady2:Z

    .line 65
    return-void
.end method

.method public setP2pWifiState(I)V
    .locals 0
    .parameter "input"

    .prologue
    .line 89
    iput p1, p0, Lcom/lge/wifi/WifiLgeSharedValues;->mP2pState:I

    .line 90
    return-void
.end method

.method public setUnicodeSSID(Z)V
    .locals 0
    .parameter "input"

    .prologue
    .line 79
    sput-boolean p1, Lcom/lge/wifi/WifiLgeSharedValues;->mUnicodeSSID:Z

    .line 80
    return-void
.end method
