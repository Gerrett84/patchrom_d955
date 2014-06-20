.class Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;
.super Landroid/content/BroadcastReceiver;
.source "LgeVoiceProtectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeVoiceProtectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 115
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent received :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logv(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$000(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 119
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const/16 v5, 0x8

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->setStatusFlag(I)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$100(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V

    .line 145
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v4, v4, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v4, v4, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 149
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v4, v4, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 150
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const v5, 0x25ceb

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 122
    :cond_2
    :try_start_1
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const/16 v5, 0x8

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->clearStatusFlag(I)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$200(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 125
    .restart local v0       #action:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 127
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->isUMTS()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const/4 v5, 0x1

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->setStatusFlag(I)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$100(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V

    goto :goto_0

    .line 128
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const/4 v5, 0x1

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->clearStatusFlag(I)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$200(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V

    goto :goto_0

    .line 130
    :cond_5
    const-string v6, "com.lge.internal.telephony.SIGNAL_REPORT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 132
    const-string v4, "enabled"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 133
    .local v3, vpEnabled:Z
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const/16 v5, 0x10

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->setStatusFlag(I)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$100(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V

    goto :goto_0

    .line 134
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const/16 v5, 0x10

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->clearStatusFlag(I)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$200(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V

    goto :goto_0

    .line 136
    .end local v3           #vpEnabled:Z
    :cond_7
    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    const-string v6, "activeArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 138
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 139
    .local v2, isTetheringOn:Z
    if-eqz v1, :cond_8

    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    move v2, v4

    .line 142
    :cond_8
    :goto_1
    if-eqz v2, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const/16 v5, 0x20

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->setStatusFlag(I)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$100(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V

    goto/16 :goto_0

    :cond_9
    move v2, v5

    .line 140
    goto :goto_1

    .line 143
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const/16 v5, 0x20

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->clearStatusFlag(I)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$200(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
