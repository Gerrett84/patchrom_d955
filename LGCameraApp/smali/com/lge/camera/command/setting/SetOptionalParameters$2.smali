.class Lcom/lge/camera/command/setting/SetOptionalParameters$2;
.super Ljava/lang/Object;
.source "SetOptionalParameters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetOptionalParameters;->setSceneModeSetting(Landroid/hardware/Camera$Parameters;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetOptionalParameters;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$2;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$2;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$2;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->updateSceneIndicator(ZLjava/lang/String;)V

    .line 195
    return-void
.end method
