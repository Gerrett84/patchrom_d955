.class public Lcom/lge/camera/listeners/PostviewCallback;
.super Ljava/lang/Object;
.source "PostviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/PostviewCallback$PostviewCallbackFunction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 18
    return-void
.end method
