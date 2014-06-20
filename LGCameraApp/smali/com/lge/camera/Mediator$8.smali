.class Lcom/lge/camera/Mediator$8;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->showManualFocusController(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2956
    iput-object p1, p0, Lcom/lge/camera/Mediator$8;->this$0:Lcom/lge/camera/Mediator;

    iput-boolean p2, p0, Lcom/lge/camera/Mediator$8;->val$show:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/lge/camera/Mediator$8;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 2959
    iget-object v0, p0, Lcom/lge/camera/Mediator$8;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    iget-boolean v1, p0, Lcom/lge/camera/Mediator$8;->val$show:Z

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/ManualFocusController;->showControl(Z)V

    .line 2960
    return-void
.end method
