.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$1;
.super Ljava/lang/Object;
.source "KeyguardSimPersoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 156
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->doHapticKeyClick()V

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPersoView;->verifyPasswordAndUnlock()V

    .line 161
    return-void
.end method
