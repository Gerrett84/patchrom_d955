.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .parameter "securityVerified"

    .prologue
    .line 1082
    return-void
.end method

.method public forgotPattern(Z)V
    .locals 0
    .parameter "isPermanentlyLocked"

    .prologue
    .line 1093
    return-void
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 1077
    const/4 v0, 0x0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .locals 0

    .prologue
    .line 1068
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 0

    .prologue
    .line 1064
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/OnDismissAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 1060
    return-void
.end method

.method public showBackupSecurity()V
    .locals 0

    .prologue
    .line 1056
    return-void
.end method

.method public showDialogFailedUnlockAttempt(I)V
    .locals 0
    .parameter "remainingBeforeWipe"

    .prologue
    .line 1087
    return-void
.end method

.method public userActivity(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 1052
    return-void
.end method
