.class Lcom/lge/camera/PostviewTimeMachineActivity$1;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;->doProcessOnResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewTimeMachineActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$1;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$1;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$1;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #calls: Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineShotAnimation()V
    invoke-static {v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$000(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    .line 115
    return-void
.end method
