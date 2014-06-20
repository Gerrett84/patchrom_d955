.class public Lcom/android/lgesettings/lge/DeviceInfoLgeUtils_Roaming;
.super Ljava/lang/Object;
.source "DeviceInfoLgeUtils_Roaming.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataRoaming(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 15
    const-string v0, "aboutphone # src/DeviceInfoLgeRoamingUtils"

    const-string v1, "getDataRoaming() : N/A"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const-string v0, "N/A"

    return-object v0
.end method

.method public static getVoiceRoaming(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 10
    const-string v0, "aboutphone # src/DeviceInfoLgeRoamingUtils"

    const-string v1, "getVoiceRoaming() : N/A"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const-string v0, "N/A"

    return-object v0
.end method
