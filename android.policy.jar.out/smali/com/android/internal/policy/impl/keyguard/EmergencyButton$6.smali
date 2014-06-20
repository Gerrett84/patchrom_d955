.class Lcom/android/internal/policy/impl/keyguard/EmergencyButton$6;
.super Landroid/telephony/PhoneStateListener;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #setter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$302(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$300(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->emergency_status:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$402(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Z)Z

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$500(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 172
    .local v0, phoneState:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$600(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 173
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #calls: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$100(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 176
    :cond_0
    return-void
.end method
