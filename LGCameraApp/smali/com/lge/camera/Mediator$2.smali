.class Lcom/lge/camera/Mediator$2;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->audioCallbackRestartEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1834
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->updateVoiceShutterIndicator(Z)V

    .line 1835
    iget-object v0, p0, Lcom/lge/camera/Mediator$2;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->setAudioRecogEngineStart()V

    .line 1836
    return-void
.end method
