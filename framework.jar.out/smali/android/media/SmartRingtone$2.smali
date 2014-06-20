.class Landroid/media/SmartRingtone$2;
.super Landroid/os/Handler;
.source "SmartRingtone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SmartRingtone;->onNoiseEstimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SmartRingtone;


# direct methods
.method constructor <init>(Landroid/media/SmartRingtone;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/SmartRingtone;->access$100(Landroid/media/SmartRingtone;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I
    invoke-static {v1}, Landroid/media/SmartRingtone;->access$200(Landroid/media/SmartRingtone;)I

    move-result v1

    if-lez v1, :cond_1

    .line 136
    iget-object v1, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    iget-object v2, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Landroid/media/SmartRingtone;->access$500(Landroid/media/SmartRingtone;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mStreamType:I
    invoke-static {v3}, Landroid/media/SmartRingtone;->access$400(Landroid/media/SmartRingtone;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    #setter for: Landroid/media/SmartRingtone;->mPrevVolume:I
    invoke-static {v1, v2}, Landroid/media/SmartRingtone;->access$302(Landroid/media/SmartRingtone;I)I

    .line 139
    iget-object v1, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mPrevVolume:I
    invoke-static {v1}, Landroid/media/SmartRingtone;->access$300(Landroid/media/SmartRingtone;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    iget-object v2, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I
    invoke-static {v2}, Landroid/media/SmartRingtone;->access$200(Landroid/media/SmartRingtone;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I
    invoke-static {v1, v2}, Landroid/media/SmartRingtone;->access$202(Landroid/media/SmartRingtone;I)I

    .line 143
    :cond_0
    iget-object v1, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #calls: Landroid/media/SmartRingtone;->setSmartRingtoneLevel()V
    invoke-static {v1}, Landroid/media/SmartRingtone;->access$600(Landroid/media/SmartRingtone;)V

    .line 145
    iget-object v1, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mPrevVolume:I
    invoke-static {v1}, Landroid/media/SmartRingtone;->access$300(Landroid/media/SmartRingtone;)I

    move-result v1

    if-lez v1, :cond_1

    .line 146
    iget-object v1, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Landroid/media/SmartRingtone;->access$500(Landroid/media/SmartRingtone;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mStreamType:I
    invoke-static {v2}, Landroid/media/SmartRingtone;->access$400(Landroid/media/SmartRingtone;)I

    move-result v2

    iget-object v3, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mAdjustVolume:I
    invoke-static {v3}, Landroid/media/SmartRingtone;->access$700(Landroid/media/SmartRingtone;)I

    move-result v3

    const/16 v4, 0x280

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 147
    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStreamVolume:: prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mPrevVolume:I
    invoke-static {v3}, Landroid/media/SmartRingtone;->access$300(Landroid/media/SmartRingtone;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adjust="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mAdjustVolume:I
    invoke-static {v3}, Landroid/media/SmartRingtone;->access$700(Landroid/media/SmartRingtone;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Landroid/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smart ringtone exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
