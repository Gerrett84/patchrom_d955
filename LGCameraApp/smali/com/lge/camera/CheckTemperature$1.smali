.class Lcom/lge/camera/CheckTemperature$1;
.super Ljava/lang/Object;
.source "CheckTemperature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CheckTemperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CheckTemperature;


# direct methods
.method constructor <init>(Lcom/lge/camera/CheckTemperature;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/camera/CheckTemperature$1;->this$0:Lcom/lge/camera/CheckTemperature;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/CheckTemperature$1;->this$0:Lcom/lge/camera/CheckTemperature;

    invoke-virtual {v1}, Lcom/lge/camera/CheckTemperature;->checkAvailablityToRunCameraApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/CheckTemperature$1;->this$0:Lcom/lge/camera/CheckTemperature;

    #getter for: Lcom/lge/camera/CheckTemperature;->mRunState:Z
    invoke-static {v1}, Lcom/lge/camera/CheckTemperature;->access$000(Lcom/lge/camera/CheckTemperature;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 80
    iget-object v1, p0, Lcom/lge/camera/CheckTemperature$1;->this$0:Lcom/lge/camera/CheckTemperature;

    #getter for: Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/camera/CheckTemperature;->access$100(Lcom/lge/camera/CheckTemperature;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lge/camera/CheckTemperature$1;->this$0:Lcom/lge/camera/CheckTemperature;

    #getter for: Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z
    invoke-static {v1}, Lcom/lge/camera/CheckTemperature;->access$200(Lcom/lge/camera/CheckTemperature;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 82
    iget-object v1, p0, Lcom/lge/camera/CheckTemperature$1;->this$0:Lcom/lge/camera/CheckTemperature;

    #getter for: Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/camera/CheckTemperature;->access$100(Lcom/lge/camera/CheckTemperature;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CheckTemperature$1;->this$0:Lcom/lge/camera/CheckTemperature;

    iget-object v2, v2, Lcom/lge/camera/CheckTemperature;->mRunTempCheck:Ljava/lang/Runnable;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    iget-object v1, p0, Lcom/lge/camera/CheckTemperature$1;->this$0:Lcom/lge/camera/CheckTemperature;

    const/4 v2, 0x0

    #setter for: Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z
    invoke-static {v1, v2}, Lcom/lge/camera/CheckTemperature;->access$202(Lcom/lge/camera/CheckTemperature;Z)Z

    .line 89
    :cond_0
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/CheckTemperature$1;->this$0:Lcom/lge/camera/CheckTemperature;

    #getter for: Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/camera/CheckTemperature;->access$100(Lcom/lge/camera/CheckTemperature;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CheckTemperature$1;->this$0:Lcom/lge/camera/CheckTemperature;

    iget-object v2, v2, Lcom/lge/camera/CheckTemperature;->mRunTempCheck:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
