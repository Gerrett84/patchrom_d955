.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$6;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 285
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "KeyguardSimPinView"

    const-string v1, "[PIN/PUK] onServiceStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->updateEmergencyText()V

    .line 289
    :cond_0
    return-void
.end method
