.class Lcom/lge/camera/controller/SettingController$2;
.super Ljava/lang/Object;
.source "SettingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingController;->setLiveeffectLimit()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingController;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 530
    const-string v0, "CameraApp"

    const-string v1, "setLiveeffectLimit updateSizeIndicator"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateSizeIndicator()V

    .line 532
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateGpsIndicator()V

    .line 533
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateStabilizationIndicator()V

    .line 534
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setLimitationToLiveeffect(Z)V

    .line 535
    return-void
.end method
