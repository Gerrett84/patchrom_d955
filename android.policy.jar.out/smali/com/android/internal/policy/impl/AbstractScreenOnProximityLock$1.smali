.class Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;
.super Landroid/os/Handler;
.source "AbstractScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    monitor-enter v1

    .line 127
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    monitor-exit v1

    .line 156
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "AbstractScreenOnProximityLock"

    const-string v2, "too close screen, show hint..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    iget-object v0, v0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    #calls: Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->prepareHintDialog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->access$500(Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    iget-object v0, v0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->enableUserActivity(Z)V

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 140
    :pswitch_1
    :try_start_1
    const-string v0, "AbstractScreenOnProximityLock"

    const-string v2, "far from the screen, hide hint..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    iget-object v0, v0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    iget-object v0, v0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    iget-object v0, v0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->enableUserActivity(Z)V

    goto :goto_0

    .line 151
    :pswitch_2
    const-string v0, "AbstractScreenOnProximityLock"

    const-string v2, "far from the screen for a certain time, release proximity sensor..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->release()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
