.class Lcom/lge/camera/controller/ToastController$3;
.super Ljava/lang/Object;
.source "ToastController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ToastController;

.field final synthetic val$hideDelayMillis:J

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ToastController;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lge/camera/controller/ToastController$3;->this$0:Lcom/lge/camera/controller/ToastController;

    iput-object p2, p0, Lcom/lge/camera/controller/ToastController$3;->val$message:Ljava/lang/String;

    iput-wide p3, p0, Lcom/lge/camera/controller/ToastController$3;->val$hideDelayMillis:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 75
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$3;->this$0:Lcom/lge/camera/controller/ToastController;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController$3;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$3;->this$0:Lcom/lge/camera/controller/ToastController;

    #getter for: Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/camera/controller/ToastController;->access$100(Lcom/lge/camera/controller/ToastController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController$3;->this$0:Lcom/lge/camera/controller/ToastController;

    #getter for: Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/lge/camera/controller/ToastController;->access$000(Lcom/lge/camera/controller/ToastController;)Ljava/lang/Runnable;

    move-result-object v2

    iget-wide v3, p0, Lcom/lge/camera/controller/ToastController$3;->val$hideDelayMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 78
    .local v0, rtnValue:Z
    if-nez v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$3;->this$0:Lcom/lge/camera/controller/ToastController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 81
    :cond_0
    return-void
.end method
