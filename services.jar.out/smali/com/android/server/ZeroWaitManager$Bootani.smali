.class Lcom/android/server/ZeroWaitManager$Bootani;
.super Ljava/lang/Thread;
.source "ZeroWaitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZeroWaitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bootani"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZeroWaitManager;


# direct methods
.method private constructor <init>(Lcom/android/server/ZeroWaitManager;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/ZeroWaitManager$Bootani;->this$0:Lcom/android/server/ZeroWaitManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ZeroWaitManager;Lcom/android/server/ZeroWaitManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/ZeroWaitManager$Bootani;-><init>(Lcom/android/server/ZeroWaitManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-static {}, Lcom/android/server/ZeroWaitManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "LGZW"

    const-string v1, "BootAnimation is running now."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {v4}, Lcom/android/server/ZeroWaitManager;->access$002(Z)Z

    .line 144
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager$Bootani;->this$0:Lcom/android/server/ZeroWaitManager;

    #getter for: Lcom/android/server/ZeroWaitManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/ZeroWaitManager;->access$100(Lcom/android/server/ZeroWaitManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 145
    const-string v0, "LGZW"

    const-string v1, "Starting Boot animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager$Bootani;->this$0:Lcom/android/server/ZeroWaitManager;

    const/16 v1, 0x7d0

    #calls: Lcom/android/server/ZeroWaitManager;->delay(I)V
    invoke-static {v0, v1}, Lcom/android/server/ZeroWaitManager;->access$200(Lcom/android/server/ZeroWaitManager;I)V

    .line 153
    const-string v0, "ctl.stop"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "service.bootanim.exit"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v3}, Lcom/android/server/ZeroWaitManager;->access$002(Z)Z

    .line 157
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager$Bootani;->this$0:Lcom/android/server/ZeroWaitManager;

    #calls: Lcom/android/server/ZeroWaitManager;->hideEmptyView()V
    invoke-static {v0}, Lcom/android/server/ZeroWaitManager;->access$300(Lcom/android/server/ZeroWaitManager;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager$Bootani;->this$0:Lcom/android/server/ZeroWaitManager;

    #getter for: Lcom/android/server/ZeroWaitManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/ZeroWaitManager;->access$400(Lcom/android/server/ZeroWaitManager;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    goto :goto_0
.end method
