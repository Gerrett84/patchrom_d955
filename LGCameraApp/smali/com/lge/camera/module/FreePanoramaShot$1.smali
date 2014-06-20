.class Lcom/lge/camera/module/FreePanoramaShot$1;
.super Ljava/lang/Object;
.source "FreePanoramaShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/FreePanoramaShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/FreePanoramaShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/FreePanoramaShot;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lge/camera/module/FreePanoramaShot$1;->this$0:Lcom/lge/camera/module/FreePanoramaShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/module/FreePanoramaShot$1;->this$0:Lcom/lge/camera/module/FreePanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/lge/camera/module/FreePanoramaShot$1;->this$0:Lcom/lge/camera/module/FreePanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startFreePanorama()V

    .line 30
    return-void
.end method
