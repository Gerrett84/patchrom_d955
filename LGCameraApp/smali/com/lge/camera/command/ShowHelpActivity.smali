.class public Lcom/lge/camera/command/ShowHelpActivity;
.super Lcom/lge/camera/command/Command;
.source "ShowHelpActivity.java"


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
    .locals 4

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/ShowHelpActivity$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/ShowHelpActivity$1;-><init>(Lcom/lge/camera/command/ShowHelpActivity;)V

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 21
    return-void
.end method
