.class public Lcom/lge/camera/command/StopPreview;
.super Lcom/lge/camera/command/Command;
.source "StopPreview.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 9
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopPreview()V

    .line 14
    return-void
.end method
