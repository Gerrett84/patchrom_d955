.class Lcom/lge/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lge/camera/CameraActivity$1;->this$0:Lcom/lge/camera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 261
    iget-object v2, p0, Lcom/lge/camera/CameraActivity$1;->this$0:Lcom/lge/camera/CameraActivity;

    const v3, 0x7f0900c1

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 263
    iget-object v2, p0, Lcom/lge/camera/CameraActivity$1;->this$0:Lcom/lge/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lge/camera/CameraActivity;->checkFromVolumeKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/lge/camera/CameraActivity$1;->this$0:Lcom/lge/camera/CameraActivity;

    iget-object v2, v2, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2, v5}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 266
    iget-object v2, p0, Lcom/lge/camera/CameraActivity$1;->this$0:Lcom/lge/camera/CameraActivity;

    iget-object v2, v2, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 268
    iget-object v2, p0, Lcom/lge/camera/CameraActivity$1;->this$0:Lcom/lge/camera/CameraActivity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 270
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    .line 272
    .local v1, wakeLockFlag:I
    iget-object v2, p0, Lcom/lge/camera/CameraActivity$1;->this$0:Lcom/lge/camera/CameraActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 275
    iget-object v2, p0, Lcom/lge/camera/CameraActivity$1;->this$0:Lcom/lge/camera/CameraActivity;

    iget-object v2, v2, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 276
    iget-object v2, p0, Lcom/lge/camera/CameraActivity$1;->this$0:Lcom/lge/camera/CameraActivity;

    iget-object v2, v2, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2, v5}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 278
    .end local v0           #powerManager:Landroid/os/PowerManager;
    .end local v1           #wakeLockFlag:I
    :cond_0
    return-void
.end method
