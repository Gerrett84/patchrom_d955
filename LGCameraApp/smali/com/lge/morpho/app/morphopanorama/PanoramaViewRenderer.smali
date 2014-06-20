.class public Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;
.super Ljava/lang/Object;
.source "PanoramaViewRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;,
        Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;,
        Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;
    }
.end annotation


# static fields
.field public static final MSG_FINISH_RENDER_PREVIEW:I = 0x0

.field public static final MSG_REQUEST_REREGISTER_TEXTURE:I = 0x2

.field public static final MSG_REQUEST_SET_POSTVIEW_DATA:I = 0x1

.field public static final PANORAMA_POSTVIEW:I = 0x1

.field public static final PANORAMA_PREVIEW:I


# instance fields
.field private isDefault:Z

.field private isFileSelect:Z

.field private isRegistered:Z

.field private mActivity:Landroid/app/Activity;

.field private mDispType:I

.field private mGyroscopeType:I

.field private mHandler:Landroid/os/Handler;

.field private mListner:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;

.field private mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

.field private mPrevTimestamp:J

.field private mPreviewMode:I

.field private mRenderEnable:Z

.field private mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

.field private mRenderInfoID:[I

.field private mRotation:I

.field private mScale:D

.field private mSyncObj:Ljava/lang/Object;

.field private mTouchSyncObj:Ljava/lang/Object;

.field private mViewHeight:I

.field private mViewWidth:I

.field private render_count:J

.field private x_rotate:D

.field private y_rotate:D


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;I)V
    .locals 6
    .parameter "activity"
    .parameter "handler"
    .parameter "image_stitcher"
    .parameter "preview_buffer_size"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isDefault:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    .line 37
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 38
    iput-wide v4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    .line 39
    iput-wide v4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    .line 41
    iput v3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    .line 48
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    .line 50
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isRegistered:Z

    .line 84
    iput v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPreviewMode:I

    .line 85
    iput-object p3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 86
    iput-object p2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mHandler:Landroid/os/Handler;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    .line 88
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    new-instance v1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    invoke-direct {v1, p0, p4}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;-><init>(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;I)V

    aput-object v1, v0, v2

    .line 89
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    new-instance v1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    invoke-direct {v1, p0, p4}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;-><init>(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;I)V

    aput-object v1, v0, v3

    .line 90
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    .line 91
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mActivity:Landroid/app/Activity;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;Z)V
    .locals 6
    .parameter "activity"
    .parameter "handler"
    .parameter "image_stitcher"
    .parameter "is_file_select"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isDefault:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    .line 37
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 38
    iput-wide v4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    .line 39
    iput-wide v4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    .line 41
    iput v3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    .line 48
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    .line 50
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isRegistered:Z

    .line 95
    iput v3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPreviewMode:I

    .line 96
    iput-object p3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 97
    iput v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I

    .line 98
    iput-boolean p4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isFileSelect:Z

    .line 99
    iput-object p2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mActivity:Landroid/app/Activity;

    .line 101
    return-void
.end method

.method private renderPreview(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;J)V
    .locals 21
    .parameter "r_info"
    .parameter "pre_odf_end_time"

    .prologue
    .line 277
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 278
    :try_start_0
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->is_set:Z

    if-nez v15, :cond_0

    .line 279
    monitor-exit v16

    .line 337
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->is_set:Z

    .line 282
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    .line 283
    new-instance v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;-><init>(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;)V

    .line 284
    .local v10, result:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 285
    .local v8, now_time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v15, v17, v19

    if-eqz v15, :cond_1

    .line 286
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    move-wide/from16 v17, v0

    sub-long v17, v8, v17

    move-wide/from16 v0, v17

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mFrameInterval:J

    .line 288
    :cond_1
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    .line 289
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoEndTime:J

    move-wide/from16 v17, v0

    sub-long v17, v8, v17

    move-wide/from16 v0, v17

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mRQRenderToOnDrawFrame:J

    .line 290
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mCount:J

    .line 291
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoTime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mSetRenderInfoTime:J

    .line 293
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_gr_mat:Z

    if-eqz v15, :cond_2

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_mat:[D

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mGyroscopeType:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 296
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_rv_mat:Z

    if-eqz v15, :cond_3

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->rv_mat:[D

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 302
    :cond_3
    const/4 v15, 0x1

    new-array v6, v15, [I

    .line 303
    .local v6, image_id:[I
    const/4 v15, 0x1

    new-array v13, v15, [I

    .line 304
    .local v13, status:[I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 305
    .local v11, s_time:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->image:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_image:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1, v6, v13}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->attach([BI[I[I)I

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 308
    .local v4, e_time:J
    const/4 v15, 0x0

    aget v15, v6, v15

    iput v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mImageID:I

    .line 309
    const/4 v15, 0x0

    aget v15, v13, v15

    iput v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mAttachStatus:I

    .line 310
    sub-long v17, v4, v11

    move-wide/from16 v0, v17

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mAttachTime:J

    .line 312
    const/4 v15, 0x1

    new-array v7, v15, [I

    .line 313
    .local v7, is_stootable:[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v15, v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->getIsShootable([I)I

    .line 314
    const/4 v15, 0x0

    aget v15, v7, v15

    iput v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mIsStootable:I

    .line 316
    const/4 v15, 0x1

    new-array v14, v15, [I

    .line 317
    .local v14, stop_thres:[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v15, v14}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->getIsStop([I)I

    .line 318
    const/4 v15, 0x0

    aget v15, v14, v15

    const/16 v17, 0x46

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_value_list:Ljava/util/ArrayList;

    if-eqz v15, :cond_4

    .line 319
    const/4 v15, 0x3

    new-array v15, v15, [F

    iput-object v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mGyroCorrectionValue:[F

    .line 320
    iget-object v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mGyroCorrectionValue:[F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_value_list:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->getAverage([FLjava/util/ArrayList;)Z

    .line 322
    :cond_4
    const/4 v15, 0x0

    aget v15, v14, v15

    iput v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mStopThres:I

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->image:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->renderPreview([BIII)I

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 327
    sub-long v17, v4, v11

    move-wide/from16 v0, v17

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mRenderTime:J

    .line 328
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    cmp-long v15, v17, v19

    if-lez v15, :cond_5

    .line 329
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoStartTime:J

    move-wide/from16 v17, v0

    sub-long v17, v17, p2

    move-wide/from16 v0, v17

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mODFToOPF:J

    .line 331
    :cond_5
    move-object/from16 v0, p1

    iget v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->preview_id:I

    iput v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mPreviewID:I

    .line 332
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mListner:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;

    if-eqz v15, :cond_6

    .line 333
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mListner:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;

    invoke-interface {v15, v10}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;->onRenderPreview(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;)V

    .line 335
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mOnDrawEndTime:J

    .line 336
    monitor-exit v16

    goto/16 :goto_0

    .end local v4           #e_time:J
    .end local v6           #image_id:[I
    .end local v7           #is_stootable:[I
    .end local v8           #now_time:J
    .end local v10           #result:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;
    .end local v11           #s_time:J
    .end local v13           #status:[I
    .end local v14           #stop_thres:[I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method


# virtual methods
.method public getRenderEnable()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 240
    iget-object v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v7

    .line 241
    :try_start_0
    iget-wide v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    .line 242
    .local v1, x_rot:D
    iget-wide v3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    .line 243
    .local v3, y_rot:D
    iget-wide v5, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 244
    .local v5, scale:D
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    .line 245
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    .line 246
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v11, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v11

    .line 248
    :try_start_1
    iget-boolean v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    if-nez v7, :cond_0

    .line 249
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    :goto_0
    return-void

    .line 246
    .end local v1           #x_rot:D
    .end local v3           #y_rot:D
    .end local v5           #scale:D
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 251
    .restart local v1       #x_rot:D
    .restart local v3       #y_rot:D
    .restart local v5       #scale:D
    :cond_0
    :try_start_3
    iget v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPreviewMode:I

    if-nez v7, :cond_4

    .line 252
    iget-object v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v7

    if-nez v7, :cond_1

    .line 253
    monitor-exit v11

    goto :goto_0

    .line 272
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 257
    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 258
    :try_start_5
    iget-object v12, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    if-ne v12, v0, :cond_3

    .line 260
    .local v8, id:I
    :goto_1
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    aget-object v10, v0, v8

    .line 261
    .local v10, render_info:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    iget-object v12, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    aget-object v9, v0, v12

    .line 262
    .local v9, pre_render_info:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 263
    :try_start_6
    iget-wide v12, v9, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mOnDrawEndTime:J

    invoke-direct {p0, v10, v12, v13}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->renderPreview(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;J)V

    .line 272
    .end local v8           #id:I
    .end local v9           #pre_render_info:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    .end local v10           #render_info:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    :cond_2
    :goto_2
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :cond_3
    move v8, v0

    .line 258
    goto :goto_1

    .line 262
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    .line 264
    :cond_4
    iget v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPreviewMode:I

    if-ne v7, v0, :cond_2

    .line 265
    iget-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isDefault:Z

    if-eqz v0, :cond_5

    .line 266
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    iget v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    invoke-virtual {v0, v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->renderPostviewDefault(I)I

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isDefault:Z

    goto :goto_2

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    iget v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    invoke-virtual/range {v0 .. v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->renderPostview(DDDI)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 12
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 369
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0008

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v8

    .line 370
    .local v8, disp_w:I
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0009

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 372
    .local v7, disp_h:I
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iput v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    .line 374
    iput v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    .line 380
    :goto_0
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    iget v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    invoke-interface {p1, v10, v10, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 381
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    int-to-float v4, v0

    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    move-object v0, p1

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 382
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    iget v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    invoke-interface {p1, v10, v10, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 383
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPreviewMode:I

    if-ne v0, v11, :cond_3

    .line 384
    iget-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isRegistered:Z

    if-nez v0, :cond_0

    .line 386
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 387
    .local v9, msg:Landroid/os/Message;
    iget-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isFileSelect:Z

    if-eqz v0, :cond_2

    .line 388
    iput v11, v9, Landroid/os/Message;->arg1:I

    .line 392
    :goto_1
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 393
    iput-boolean v11, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isRegistered:Z

    .line 398
    .end local v9           #msg:Landroid/os/Message;
    :cond_0
    :goto_2
    return-void

    .line 376
    :cond_1
    iput v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    .line 377
    iput v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    goto :goto_0

    .line 390
    .restart local v9       #msg:Landroid/os/Message;
    :cond_2
    const/4 v0, 0x2

    iput v0, v9, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 396
    .end local v9           #msg:Landroid/os/Message;
    :cond_3
    iput-boolean v11, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    goto :goto_2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isRegistered:Z

    .line 403
    iput-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    .line 404
    return-void
.end method

.method public resetMesureInfo()V
    .locals 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    .line 221
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAngle(FF)V
    .locals 6
    .parameter "distance_x"
    .parameter "distance_y"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    .line 159
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    int-to-float v0, v0

    div-float v0, p2, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefault()V
    .locals 4

    .prologue
    .line 204
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    .line 206
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    .line 207
    const-wide/high16 v2, 0x3ff0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isDefault:Z

    .line 209
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultScale(D)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iput-wide p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDispType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iput p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInputGyroscopeType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 112
    iput p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mGyroscopeType:I

    .line 113
    return-void
.end method

.method public setOnRenderPreviewListener(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mListner:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;

    .line 109
    return-void
.end method

.method public setPreviewRotation(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    sparse-switch p1, :sswitch_data_0

    .line 200
    :goto_0
    :try_start_0
    monitor-exit v1

    .line 201
    return-void

    .line 186
    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 189
    :sswitch_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I

    goto :goto_0

    .line 192
    :sswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I

    goto :goto_0

    .line 195
    :sswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setRenderEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iput-boolean p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    .line 228
    monitor-exit v1

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRenderInfo([BLjava/util/ArrayList;[D[DII)V
    .locals 11
    .parameter "input_img"
    .parameter
    .parameter "gr_mat"
    .parameter "rv_mat"
    .parameter "use_image"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<[F>;[D[DII)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, gr_value_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    iget-object v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    monitor-enter v7

    .line 120
    :try_start_0
    iget-object v6, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    iget-object v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v3, v6, v8

    .line 121
    .local v3, r_info:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    iget-object v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    const/4 v10, 0x0

    aget v6, v6, v10

    const/4 v10, 0x1

    if-ne v6, v10, :cond_1

    const/4 v6, 0x0

    :goto_0
    aput v6, v8, v9

    .line 122
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v7, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 126
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 128
    .local v4, s_time:J
    const/4 v6, 0x0

    iget-object v8, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->image:[B

    const/4 v9, 0x0

    iget-object v10, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->image:[B

    array-length v10, v10

    invoke-static {p1, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_value_list:Ljava/util/ArrayList;

    .line 132
    :cond_0
    if-eqz p3, :cond_2

    .line 133
    const/4 v6, 0x0

    iget-object v8, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_mat:[D

    const/4 v9, 0x0

    array-length v10, p3

    invoke-static {p3, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_gr_mat:Z

    .line 138
    :goto_1
    if-eqz p4, :cond_3

    .line 139
    const/4 v6, 0x0

    iget-object v8, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->rv_mat:[D

    const/4 v9, 0x0

    array-length v10, p4

    invoke-static {p4, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_rv_mat:Z

    .line 144
    :goto_2
    move/from16 v0, p5

    iput v0, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_image:I

    .line 145
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->is_set:Z

    .line 146
    move/from16 v0, p6

    iput v0, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->preview_id:I

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 149
    .local v1, e_time:J
    sub-long v8, v1, v4

    iput-wide v8, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoTime:J

    .line 150
    iput-wide v4, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoStartTime:J

    .line 151
    iput-wide v1, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoEndTime:J

    .line 152
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    return-void

    .line 121
    .end local v1           #e_time:J
    .end local v4           #s_time:J
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 122
    .end local v3           #r_info:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 136
    .restart local v3       #r_info:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    .restart local v4       #s_time:J
    :cond_2
    const/4 v6, 0x0

    :try_start_3
    iput-boolean v6, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_gr_mat:Z

    goto :goto_1

    .line 152
    .end local v4           #s_time:J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 142
    .restart local v4       #s_time:J
    :cond_3
    const/4 v6, 0x0

    :try_start_4
    iput-boolean v6, v3, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_rv_mat:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2
.end method

.method public setScale(F)V
    .locals 10
    .parameter "scale"

    .prologue
    const-wide/high16 v8, 0x4008

    const-wide v6, 0x3fe999999999999aL

    .line 164
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 166
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    cmpl-double v0, v2, v8

    if-lez v0, :cond_1

    .line 167
    const-wide/high16 v2, 0x4008

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 171
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    .line 172
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    .line 173
    monitor-exit v1

    .line 174
    return-void

    .line 168
    :cond_1
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    .line 169
    const-wide v2, 0x3fe999999999999aL

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStitcher(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;)V
    .locals 0
    .parameter "stitcher"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 105
    return-void
.end method
