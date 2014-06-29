.class Lcom/android/server/ZeroWaitManager$1;
.super Landroid/os/Handler;
.source "ZeroWaitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZeroWaitManager;
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
    .line 162
    iput-object p1, p0, Lcom/android/server/ZeroWaitManager$1;->this$0:Lcom/android/server/ZeroWaitManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 166
    const-string v0, "persist.sys.lge.zwait_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager$1;->this$0:Lcom/android/server/ZeroWaitManager;

    invoke-virtual {v0}, Lcom/android/server/ZeroWaitManager;->exitZWMode()V

    .line 169
    :cond_0
    return-void
.end method
