.class Lcom/lge/camera/EffectsBase$5;
.super Ljava/lang/Object;
.source "EffectsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/EffectsBase;->sendMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsBase;

.field final synthetic val$effect:I

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsBase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/lge/camera/EffectsBase$5;->this$0:Lcom/lge/camera/EffectsBase;

    iput p2, p0, Lcom/lge/camera/EffectsBase$5;->val$effect:I

    iput p3, p0, Lcom/lge/camera/EffectsBase$5;->val$msg:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1275
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START run effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase$5;->val$effect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase$5;->val$msg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IsHave="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$5;->this$0:Lcom/lge/camera/EffectsBase;

    #getter for: Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z
    invoke-static {v2}, Lcom/lge/camera/EffectsBase;->access$400(Lcom/lge/camera/EffectsBase;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/lge/camera/EffectsBase$5;->this$0:Lcom/lge/camera/EffectsBase;

    #getter for: Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;
    invoke-static {v0}, Lcom/lge/camera/EffectsBase;->access$500(Lcom/lge/camera/EffectsBase;)Lcom/lge/camera/EffectsBase$EffectsListener;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/EffectsBase$5;->val$effect:I

    iget v2, p0, Lcom/lge/camera/EffectsBase$5;->val$msg:I

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/EffectsBase$EffectsListener;->onEffectsUpdate(II)V

    .line 1279
    iget-object v0, p0, Lcom/lge/camera/EffectsBase$5;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v1, 0x0

    #setter for: Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z
    invoke-static {v0, v1}, Lcom/lge/camera/EffectsBase;->access$402(Lcom/lge/camera/EffectsBase;Z)Z

    .line 1280
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "END run IsHave="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$5;->this$0:Lcom/lge/camera/EffectsBase;

    #getter for: Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z
    invoke-static {v2}, Lcom/lge/camera/EffectsBase;->access$400(Lcom/lge/camera/EffectsBase;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    return-void
.end method
