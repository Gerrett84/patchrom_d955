.class Lcom/lge/camera/controller/camera/FacePreviewController$1;
.super Ljava/lang/Object;
.source "FacePreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/FacePreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/FacePreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/FacePreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$000(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$000(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$100(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$100(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$200(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$200(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #setter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$302(Lcom/lge/camera/controller/camera/FacePreviewController;I)I

    .line 373
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$400(Lcom/lge/camera/controller/camera/FacePreviewController;)Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$400(Lcom/lge/camera/controller/camera/FacePreviewController;)Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$500(Lcom/lge/camera/controller/camera/FacePreviewController;)[Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    #getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I
    invoke-static {v2}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$300(Lcom/lge/camera/controller/camera/FacePreviewController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangles([Landroid/graphics/Rect;I)V

    .line 376
    :cond_3
    return-void
.end method
