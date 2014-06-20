.class final Lcom/lge/camera/controller/PreviewController$EffectCameraListener;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Lcom/lge/camera/EffectsBase$EffectsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EffectCameraListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 2624
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$EffectCameraListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/controller/PreviewController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2624
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController$EffectCameraListener;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .parameter "exception"
    .parameter "fileName"

    .prologue
    .line 2629
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectCameraListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->doOnEffectesError(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2630
    monitor-exit p0

    return-void

    .line 2629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 1
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectCameraListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->doOnEffectsUpdate(II)V

    .line 2627
    return-void
.end method
