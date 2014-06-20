.class Lcom/android/server/power/DoubleTapService$1;
.super Landroid/database/ContentObserver;
.source "DoubleTapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/DoubleTapService;-><init>(Landroid/content/Context;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DoubleTapService;


# direct methods
.method constructor <init>(Lcom/android/server/power/DoubleTapService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/power/DoubleTapService$1;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$1;->this$0:Lcom/android/server/power/DoubleTapService;

    iget-object v3, p0, Lcom/android/server/power/DoubleTapService$1;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/DoubleTapService;->access$100(Lcom/android/server/power/DoubleTapService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_tilt_view"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    #setter for: Lcom/android/server/power/DoubleTapService;->mTiltingGestureSetting:Z
    invoke-static {v2, v0}, Lcom/android/server/power/DoubleTapService;->access$002(Lcom/android/server/power/DoubleTapService;Z)Z

    .line 118
    const-string v0, "DoubleTapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TILTING gesture enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$1;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mTiltingGestureSetting:Z
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$000(Lcom/android/server/power/DoubleTapService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    :cond_0
    move v0, v1

    .line 115
    goto :goto_0
.end method
