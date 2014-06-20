.class Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraPreviewCallback"
.end annotation


# instance fields
.field private completeFrame:Z

.field private engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

.field private mParentCallback:Landroid/hardware/Camera$PreviewCallback;

.field final synthetic this$0:Lcom/lge/camera/components/CameraPreview;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/CameraPreview;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 162
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

    .line 166
    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mParentCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->completeFrame:Z

    return-void
.end method


# virtual methods
.method public closeCallback()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

    .line 183
    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mParentCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 184
    return-void
.end method

.method public isCompleteFrame()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->completeFrame:Z

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 187
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

    if-nez v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    #getter for: Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;
    invoke-static {v3}, Lcom/lge/camera/components/CameraPreview;->access$000(Lcom/lge/camera/components/CameraPreview;)Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    #getter for: Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;
    invoke-static {v3}, Lcom/lge/camera/components/CameraPreview;->access$000(Lcom/lge/camera/components/CameraPreview;)Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/camera/components/CameraPreview$OnDeviceListener;->isCameraDeviceClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 195
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 196
    .local v1, previewSize:Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_3

    .line 197
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8

    mul-double/2addr v3, v5

    double-to-int v2, v3

    .line 198
    .local v2, resultWide:I
    if-eqz v1, :cond_3

    array-length v3, p1

    if-ne v2, v3, :cond_0

    .line 203
    .end local v2           #resultWide:I
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v3}, Lcom/lge/olaworks/library/EngineProcessor;->isEmptyEngine()Z

    move-result v3

    if-nez v3, :cond_4

    .line 204
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3, p1}, Lcom/lge/camera/components/CameraPreview;->processPreviewFrame([B)V

    .line 205
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mParentCallback:Landroid/hardware/Camera$PreviewCallback;

    if-eqz v3, :cond_4

    .line 206
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mParentCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v3, p1, p2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 209
    :cond_4
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 210
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->completeFrame:Z

    goto :goto_0
.end method

.method public setCompleteFrame(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->completeFrame:Z

    .line 180
    return-void
.end method

.method public setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

    .line 171
    return-void
.end method

.method public setParentPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mParentCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 174
    return-void
.end method
