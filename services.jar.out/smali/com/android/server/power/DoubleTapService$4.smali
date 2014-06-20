.class Lcom/android/server/power/DoubleTapService$4;
.super Ljava/lang/Object;
.source "DoubleTapService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DoubleTapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DoubleTapService;


# direct methods
.method constructor <init>(Lcom/android/server/power/DoubleTapService;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/server/power/DoubleTapService$4;->this$0:Lcom/android/server/power/DoubleTapService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$4;->this$0:Lcom/android/server/power/DoubleTapService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/power/DoubleTapService;->setProximitySensorEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/DoubleTapService;->access$1600(Lcom/android/server/power/DoubleTapService;Z)V

    .line 311
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$4;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mProximity:I
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$1700(Lcom/android/server/power/DoubleTapService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$4;->this$0:Lcom/android/server/power/DoubleTapService;

    const/4 v1, -0x1

    #setter for: Lcom/android/server/power/DoubleTapService;->mProximity:I
    invoke-static {v0, v1}, Lcom/android/server/power/DoubleTapService;->access$1702(Lcom/android/server/power/DoubleTapService;I)I

    .line 313
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService$4;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/DoubleTapService;->access$500(Lcom/android/server/power/DoubleTapService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 315
    const-string v0, "DoubleTapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double-tap goToSleep : proximity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService$4;->this$0:Lcom/android/server/power/DoubleTapService;

    #getter for: Lcom/android/server/power/DoubleTapService;->mProximity:I
    invoke-static {v2}, Lcom/android/server/power/DoubleTapService;->access$1700(Lcom/android/server/power/DoubleTapService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    return-void
.end method
