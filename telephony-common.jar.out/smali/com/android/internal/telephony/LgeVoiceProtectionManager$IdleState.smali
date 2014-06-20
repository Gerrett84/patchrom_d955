.class Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;
.super Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;
.source "LgeVoiceProtectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeVoiceProtectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;-><init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;-><init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v1, "Enter to IDLE State"

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 318
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v1, "Exit from IDLE State"

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 329
    iget v0, p1, Landroid/os/Message;->what:I

    .line 332
    invoke-super {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->processMessage(Landroid/os/Message;)Z

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    const-string v0, "[IDLE] "

    return-object v0
.end method
