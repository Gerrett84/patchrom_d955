.class Lcom/android/server/ZeroWaitManager$4;
.super Ljava/util/TimerTask;
.source "ZeroWaitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ZeroWaitManager;->enterZWMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZeroWaitManager;


# direct methods
.method constructor <init>(Lcom/android/server/ZeroWaitManager;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/server/ZeroWaitManager$4;->this$0:Lcom/android/server/ZeroWaitManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager$4;->this$0:Lcom/android/server/ZeroWaitManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/ZeroWaitManager;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/server/ZeroWaitManager;->access$602(Lcom/android/server/ZeroWaitManager;Ljava/util/Timer;)Ljava/util/Timer;

    .line 642
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager$4;->this$0:Lcom/android/server/ZeroWaitManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/ZeroWaitManager;->WakeLockTimeout:Z
    invoke-static {v0, v1}, Lcom/android/server/ZeroWaitManager;->access$702(Lcom/android/server/ZeroWaitManager;Z)Z

    .line 643
    const-string v0, "LGZW"

    const-string v1, "WakeLockTimeout is Expired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method
