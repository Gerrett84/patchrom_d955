.class public Lcom/lge/camera/listeners/JpegPictureCallback;
.super Ljava/lang/Object;
.source "JpegPictureCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mGet:Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;

    .line 13
    iput-object p1, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mGet:Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;

    .line 14
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mGet:Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/lge/camera/listeners/JpegPictureCallback;->mGet:Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;->jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V

    .line 20
    :cond_0
    return-void
.end method
