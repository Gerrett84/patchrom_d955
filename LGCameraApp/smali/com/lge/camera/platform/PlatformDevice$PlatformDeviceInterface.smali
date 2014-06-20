.class public interface abstract Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;
.super Ljava/lang/Object;
.source "PlatformDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/platform/PlatformDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlatformDeviceInterface"
.end annotation


# virtual methods
.method public abstract getCurrentModule()Lcom/lge/camera/module/Module;
.end method

.method public abstract jpegCallbackOnDualCameraPictureTaken([B)V
.end method

.method public abstract onLearningDoneProcess()V
.end method

.method public abstract onSetBitmapDoneProcess()V
.end method
