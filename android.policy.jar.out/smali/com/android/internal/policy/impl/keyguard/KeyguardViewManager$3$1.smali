.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3$1;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->onSurfaceDrawingComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->val$showListener:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    .line 906
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->val$showListener:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    goto :goto_0
.end method
