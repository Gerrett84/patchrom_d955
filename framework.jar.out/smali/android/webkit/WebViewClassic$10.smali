.class Landroid/webkit/WebViewClassic$10;
.super Landroid/content/BroadcastReceiver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 10871
    iput-object p1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 10874
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.intent.action.SOFT_INPUT_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10875
    iget-object v0, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getIsChangeZoomScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10877
    iget-object v0, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/ZoomManager;->setIsChangeZoomScale(Z)V

    .line 10878
    iget-object v0, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getPrevZoomScaleForSoftKeyBoard()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    .line 10881
    :cond_0
    return-void
.end method
