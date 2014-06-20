.class Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "NextiKeyguardSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDevicePolicyManagerStateChanged()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$100(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V

    .line 247
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 236
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 237
    .local v0, silent:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$000(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSilentMode:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$002(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;Z)Z

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->updateResources()V

    .line 242
    :cond_0
    return-void

    .line 236
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$100(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V

    .line 252
    return-void
.end method
