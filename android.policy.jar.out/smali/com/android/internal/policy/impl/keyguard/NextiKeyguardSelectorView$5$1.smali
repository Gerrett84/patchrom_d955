.class Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5$1;
.super Ljava/lang/Object;
.source "NextiKeyguardSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->updateView()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$1300(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V

    .line 767
    return-void
.end method
