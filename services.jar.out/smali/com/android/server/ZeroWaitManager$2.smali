.class Lcom/android/server/ZeroWaitManager$2;
.super Landroid/os/UEventObserver;
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
    .line 172
    iput-object p1, p0, Lcom/android/server/ZeroWaitManager$2;->this$0:Lcom/android/server/ZeroWaitManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 175
    const-string v0, "1"

    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "LGZW"

    const-string v1, "Power Key is pressed!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager$2;->this$0:Lcom/android/server/ZeroWaitManager;

    invoke-virtual {v0}, Lcom/android/server/ZeroWaitManager;->exitZWMode()V

    .line 184
    :goto_1
    return-void

    .line 177
    :cond_0
    const-string v0, "2"

    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const-string v0, "LGZW"

    const-string v1, "Charger is inserted!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_1
    const-string v0, "LGZW"

    const-string v1, "Unknown Event is happened!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
