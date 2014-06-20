.class Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;
.super Landroid/content/BroadcastReceiver;
.source "NextiKeyguardSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->registerReceiver()V
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
    .line 740
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 743
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, action:Ljava/lang/String;
    const-string v3, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    const-string v3, "spcnt"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 748
    .local v1, cnt:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->setSPModeMailUnReadCount(I)V
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$1000(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;I)V

    .line 778
    .end local v1           #cnt:I
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 752
    const-string v3, "SecuritySelectorView"

    const-string v4, "KeyguardSelectorView.onReceive(): BOOT_COMPLETED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getMissedCallCount()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$1100(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V

    .line 755
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v2, intent2:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 760
    .end local v2           #intent2:Landroid/content/Intent;
    :cond_2
    const-string v3, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE_LOCAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 761
    const-string v3, "SecuritySelectorView"

    const-string v4, "KeyguardSelectorView.onReceive(): KEYGUARD_UPDATE_LOCAL"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    const-string v3, "RemoteViews"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    iput-object v3, v4, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 763
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5$1;-><init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;)V

    #setter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$1202(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 769
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHandlerChara:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$1400(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$1200(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 772
    :cond_3
    const-string v3, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 774
    const-string v3, "SecuritySelectorView"

    const-string v4, "KeyguardSelectorView.onReceive(): LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$200(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0
.end method
