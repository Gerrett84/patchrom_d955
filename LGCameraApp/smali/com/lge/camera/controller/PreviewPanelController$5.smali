.class Lcom/lge/camera/controller/PreviewPanelController$5;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 2085
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$5;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$5;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v1, 0x0

    #calls: Lcom/lge/camera/controller/PreviewPanelController;->reviewThumbnailDoClickAction(Landroid/view/View;Z)Z
    invoke-static {v0, p1, v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$400(Lcom/lge/camera/controller/PreviewPanelController;Landroid/view/View;Z)Z

    .line 2088
    return-void
.end method
