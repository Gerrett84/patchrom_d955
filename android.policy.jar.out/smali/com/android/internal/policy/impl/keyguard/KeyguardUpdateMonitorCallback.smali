.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method initialize()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method onAccessoryStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 144
    return-void
.end method

.method onAlarmChanged()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method onHdmiPlugStateChanged(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 141
    return-void
.end method

.method public onInstantlyLgWidgetStateChanged()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .parameter "showing"

    .prologue
    .line 69
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 63
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 34
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 48
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 127
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 55
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 97
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 117
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 102
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 91
    return-void
.end method
