.class Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;
.super Ljava/lang/Object;
.source "CamcorderStorageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkStorage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/CamcorderStorageController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderStorageController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderStorageController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->access$000(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderStorageController;

    #getter for: Lcom/lge/camera/controller/StorageController;->mStorageState:I
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->access$100(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderStorageController;

    #getter for: Lcom/lge/camera/controller/StorageController;->mStorageState:I
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->access$200(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderStorageController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->access$300(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderStorageController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->access$400(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "StorageControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    goto :goto_0
.end method
