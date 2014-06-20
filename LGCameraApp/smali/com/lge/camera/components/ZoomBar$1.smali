.class Lcom/lge/camera/components/ZoomBar$1;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/ZoomBar;->updateZoom(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/ZoomBar;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/lge/camera/components/ZoomBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    iput p2, p0, Lcom/lge/camera/components/ZoomBar$1;->val$value:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    iget-object v1, v1, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    iget-object v1, v1, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v1, p0}, Lcom/lge/camera/components/BarAction;->removePostRunnable(Ljava/lang/Runnable;)V

    .line 137
    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    iget-object v1, v1, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v2, 0x7f090213

    invoke-interface {v1, v2}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ZoomProgressBar;

    .line 138
    .local v0, progress:Lcom/lge/camera/components/ZoomProgressBar;
    if-eqz v0, :cond_0

    .line 139
    iget v1, p0, Lcom/lge/camera/components/ZoomBar$1;->val$value:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ZoomProgressBar;->setProgress(I)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v1}, Lcom/lge/camera/components/ZoomBar;->updateZoomText()V

    .line 143
    .end local v0           #progress:Lcom/lge/camera/components/ZoomProgressBar;
    :cond_1
    return-void
.end method
