.class public Lcom/movial/ipphone/IPPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "IPPhoneProxy.java"


# instance fields
.field private mActivePhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 0
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;-><init>()V

    .line 84
    return-void
.end method

.method public static getIPPhoneProfile()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, -0x1

    return v0
.end method

.method public static getIPPhoneServiceState()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangupFakeCall(Z)V
    .locals 0
    .parameter "dialed"

    .prologue
    .line 124
    return-void
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 118
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .parameter "power"

    .prologue
    .line 92
    return-void
.end method

.method public startImsEmergencyCall()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 120
    return-void
.end method
