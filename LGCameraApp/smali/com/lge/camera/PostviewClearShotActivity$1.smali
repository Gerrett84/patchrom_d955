.class Lcom/lge/camera/PostviewClearShotActivity$1;
.super Ljava/lang/Object;
.source "PostviewClearShotActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewClearShotActivity;->makeObjectInfoList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewClearShotActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewClearShotActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/lge/camera/PostviewClearShotActivity$1;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$1;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    #getter for: Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/lge/camera/PostviewClearShotActivity;->access$000(Lcom/lge/camera/PostviewClearShotActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$1;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    #getter for: Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/lge/camera/PostviewClearShotActivity;->access$000(Lcom/lge/camera/PostviewClearShotActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$1;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity$1;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    #calls: Lcom/lge/camera/PostviewClearShotActivity;->createObjectInformation()Z
    invoke-static {v1}, Lcom/lge/camera/PostviewClearShotActivity;->access$200(Lcom/lge/camera/PostviewClearShotActivity;)Z

    move-result v1

    #setter for: Lcom/lge/camera/PostviewClearShotActivity;->mLoadCompleted:Z
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewClearShotActivity;->access$102(Lcom/lge/camera/PostviewClearShotActivity;Z)Z

    goto :goto_0
.end method
