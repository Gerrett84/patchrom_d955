.class Lcom/android/server/power/PowerManagerService$4;
.super Landroid/os/UEventObserver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ACTION_XO_TEMP:Ljava/lang/String; = "com.lge.intent.action.ACTION_THERMALDAEMON_TEMP"


# instance fields
.field intentTemp:Landroid/content/Intent;

.field mXOTHM:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 2685
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 2689
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.ACTION_THERMALDAEMON_TEMP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->intentTemp:Landroid/content/Intent;

    .line 2692
    const-string v0, "LGE_TM_XOTHM"

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->mXOTHM:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 2701
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2703
    .local v1, mEvent:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2705
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$4;->mXOTHM:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2706
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$4;->mXOTHM:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2707
    .local v2, mTemp:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2708
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGE_TM_XOTHM temp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2710
    .local v3, temp:I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$4;->intentTemp:Landroid/content/Intent;

    const-string v5, "value"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2711
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$4;->intentTemp:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2729
    .end local v2           #mTemp:Ljava/lang/String;
    .end local v3           #temp:I
    :cond_0
    :goto_0
    return-void

    .line 2725
    :catch_0
    move-exception v0

    .line 2726
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PowerManagerService"

    const-string v5, "Exception: "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
