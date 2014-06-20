.class abstract Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;
.super Lcom/android/internal/util/State;
.source "LgeVoiceProtectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeVoiceProtectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;-><init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    const v2, 0x25ceb

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected Event Received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 262
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v1, "ICC changed."

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$300(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->updateIccAvailability()V

    goto :goto_0

    .line 267
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v1, "Records loaded."

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$300(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->onRecordsLoaded()V

    goto :goto_0

    .line 273
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v1, "VP Status changed."

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$300(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->onVpStatusChanged()V

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 282
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v1, "Data call list changed."

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$300(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->onDataCallListChanged(Landroid/os/AsyncResult;)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sendMessage(I)V

    goto :goto_0

    .line 289
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v1, "Voice call is started"

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$300(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->setStatusFlag(I)V
    invoke-static {v0, v3}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$100(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sendMessage(I)V

    goto :goto_0

    .line 295
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v1, "Voice call is ended"

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$300(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->clearStatusFlag(I)V
    invoke-static {v0, v3}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$200(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sendMessage(I)V

    goto :goto_0

    .line 259
    nop

    :sswitch_data_0
    .sparse-switch
        0x25ceb -> :sswitch_2
        0x42002 -> :sswitch_1
        0x42004 -> :sswitch_3
        0x42007 -> :sswitch_4
        0x42008 -> :sswitch_5
        0x42021 -> :sswitch_0
    .end sparse-switch
.end method
