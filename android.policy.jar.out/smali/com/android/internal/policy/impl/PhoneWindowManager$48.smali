.class Lcom/android/internal/policy/impl/PhoneWindowManager$48;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 8920
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8923
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8924
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.lge.android.intent.action.ACCESSORY_EVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8925
    const-string v2, "com.lge.android.intent.extra.ACCESSORY_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 8926
    .local v1, currentState:I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 8927
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 8928
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-eqz v2, :cond_0

    .line 8929
    const-string v2, "WindowManager"

    const-string v3, "cover closed -stop daydreaming"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8930
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 8940
    .end local v1           #currentState:I
    :cond_0
    :goto_0
    return-void

    .line 8932
    .restart local v1       #currentState:I
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 8933
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto :goto_0

    .line 8934
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 8935
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraCoverOpened:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto :goto_0

    .line 8936
    :cond_3
    if-ne v1, v4, :cond_0

    .line 8937
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraCoverOpened:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto :goto_0
.end method
