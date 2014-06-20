.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$5;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardSimPersoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 207
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "KeyguardSimPersoView"

    const-string v1, "[PIN/PUK] onServiceStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->updateEmergencyText()V

    .line 212
    :cond_0
    return-void
.end method
