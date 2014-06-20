.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showHalfWrongPasswordDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$entercode:Landroid/widget/EditText;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2077
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;->val$entercode:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;->val$ad:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;->val$mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;->val$entercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "life is good"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2081
    const-string v0, "KeyguardHostView"

    const-string v1, "user inputs life is good correctly!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2084
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;->val$mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setInputHalfFailedAttempts(Z)V

    .line 2091
    :goto_0
    return-void

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;->val$entercode:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2089
    const-string v0, "KeyguardHostView"

    const-string v1, "mismatch with life is good!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
