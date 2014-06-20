.class Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$2;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
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
    .line 255
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$200(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$300(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method
