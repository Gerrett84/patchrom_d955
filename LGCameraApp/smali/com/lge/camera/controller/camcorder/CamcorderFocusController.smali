.class public Lcom/lge/camera/controller/camcorder/CamcorderFocusController;
.super Lcom/lge/camera/controller/FocusController;
.source "CamcorderFocusController.java"

# interfaces
.implements Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;
.implements Lcom/lge/camera/listeners/ObjectTrackingFocusCallback$ObjectTrackingFunction;


# instance fields
.field protected mAutoFocusCallback:Lcom/lge/camera/listeners/CamcorderAutoFocusCallback;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/FocusController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/lge/camera/listeners/CamcorderAutoFocusCallback;

    invoke-direct {v0}, Lcom/lge/camera/listeners/CamcorderAutoFocusCallback;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mAutoFocusCallback:Lcom/lge/camera/listeners/CamcorderAutoFocusCallback;

    .line 32
    new-instance v0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;-><init>(Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 33
    new-instance v0, Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;-><init>(Lcom/lge/camera/listeners/ObjectTrackingFocusCallback$ObjectTrackingFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mObjectTrackingFocusCallback:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;

    .line 34
    return-void
.end method


# virtual methods
.method public doCamcorderContinuousFocusCallback(Z)V
    .locals 1
    .parameter "focusedState"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->doCamcorderContinuousFocusCallback(Z)V

    .line 87
    return-void
.end method

.method public doFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 36
    return-void
.end method

.method public doObjectTrackingFocusCallback([I)V
    .locals 0
    .parameter "data"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->startObjectTrackingFocus([I)V

    .line 204
    return-void
.end method

.method public hideFocus()Z
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "CameraApp"

    const-string v1, "### hideFocus & unregister"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->unregisterCallback()V

    .line 81
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iput-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    .line 54
    :cond_0
    iput-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mAutoFocusCallback:Lcom/lge/camera/listeners/CamcorderAutoFocusCallback;

    .line 55
    iput-object v1, p0, Lcom/lge/camera/controller/FocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 56
    iput-object v1, p0, Lcom/lge/camera/controller/FocusController;->mObjectTrackingFocusCallback:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;

    .line 57
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onPause()V

    .line 42
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->unregisterCallback()V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->unregisterObjectCallback()V

    .line 46
    return-void
.end method

.method public setFocusWindow(Landroid/graphics/Rect;)V
    .locals 12
    .parameter "rect"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x1

    const/high16 v9, 0x44fa

    .line 154
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, sizeOnScreenString:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 157
    .local v4, previewSizeOnScreen:[I
    if-nez v5, :cond_0

    .line 158
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onResume()V

    .line 159
    const-string v6, "CameraApp"

    const-string v7, "error! sizeOnScreenString is null"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 163
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 164
    .local v3, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    if-nez v6, :cond_1

    .line 165
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    .line 166
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    new-instance v7, Landroid/hardware/Camera$Area;

    iget-object v8, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8, v10}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1
    const/4 v0, 0x0

    .local v0, center_x:F
    const/4 v1, 0x0

    .line 171
    .local v1, center_y:F
    const/4 v6, 0x0

    :try_start_0
    aget v6, v4, v6

    int-to-float v6, v6

    div-float v0, v6, v11

    .line 172
    const/4 v6, 0x1

    aget v6, v4, v6

    int-to-float v6, v6

    div-float v1, v6, v11

    .line 174
    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    mul-float/2addr v6, v9

    const/4 v7, 0x0

    aget v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 175
    iget v6, p1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    mul-float/2addr v6, v9

    const/4 v7, 0x1

    aget v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 176
    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    mul-float/2addr v6, v9

    const/4 v7, 0x0

    aget v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p1, Landroid/graphics/Rect;->right:I

    .line 177
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    mul-float/2addr v6, v9

    const/4 v7, 0x1

    aget v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 179
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Area;

    iget-object v6, v6, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 180
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Area;

    iget-object v6, v6, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 181
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Area;

    iget-object v6, v6, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 182
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Area;

    iget-object v6, v6, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 184
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 185
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 186
    const-string v6, "on"

    invoke-static {v3, v6}, Lcom/lge/camera/platform/PlatformDevice;->setObjectTracking(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 187
    const-string v6, "CameraApp"

    const-string v7, "###setFocusMode-ObjectTracking"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 191
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFocusWindow : left "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " top "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFocusWindow : right "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bottom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "setTouchIndexAf setParameter exception : "

    invoke-static {v6, v7, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 197
    .end local v0           #center_x:F
    .end local v1           #center_y:F
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_2
    const-string v6, "CameraApp"

    const-string v7, "mCameraDevice is null"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setObjectFocusRect(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 125
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, p1, v4

    .line 126
    .local v1, left:I
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int v3, p2, v4

    .line 127
    .local v3, top:I
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int v2, p1, v4

    .line 128
    .local v2, right:I
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    add-int v0, p2, v4

    .line 130
    .local v0, bottom:I
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    if-gt v1, v4, :cond_0

    .line 131
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    .line 132
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    add-int v2, v4, v5

    .line 134
    :cond_0
    if-gtz v3, :cond_1

    .line 135
    const/4 v3, 0x0

    .line 136
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    .line 138
    :cond_1
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int/2addr v4, v5

    if-lt v2, v4, :cond_2

    .line 139
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int v2, v4, v5

    .line 140
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int v1, v4, v5

    .line 143
    :cond_2
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    if-lt v0, v4, :cond_3

    .line 144
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    sub-int v3, v4, v5

    .line 145
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    .line 148
    :cond_3
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "move to top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", left = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", right = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->setFocusRectangle(IIII)V

    .line 151
    return-void
.end method

.method public showFocus()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->showFocus(Z)Z

    move-result v0

    return v0
.end method

.method public showFocus(Z)Z
    .locals 2
    .parameter "justDoIt"

    .prologue
    .line 60
    if-nez p1, :cond_0

    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "CameraApp"

    const-string v1, "### showFocus & register"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->registerCallback()V

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFocusByTouchPress(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 92
    const-string v0, "CameraApp"

    const-string v1, "startFocusByTouchPress"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->checkAvailablePreviewSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    .line 100
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    sub-int/2addr p2, v0

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->setObjectFocusState(I)V

    .line 104
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->isRegisterObjectCallback()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->calculateObjectScaleRatio()V

    .line 106
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->registerObjectCallback()V

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->setFocusRectangleInitialize()V

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->setObjectFocusRect(II)V

    .line 110
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->setFocusWindow(Landroid/graphics/Rect;)V

    .line 111
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/platform/PlatformDevice;->runObjectTracking(Landroid/hardware/Camera;)V

    .line 119
    const-string v0, "CameraApp"

    const-string v1, "run object tracking"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
