.class final Lcom/android/server/power/ElectronBeam;
.super Ljava/lang/Object;
.source "ElectronBeam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field private static final ELECTRON_BEAM_LAYER:I = 0x40000001

.field private static final HSTRETCH_DURATION:F = 0.5f

.field private static final LOCK_ANIMATION_RESOLUTION:I = 0x28

.field public static final MODE_COOL_DOWN:I = 0x4

.field public static final MODE_COOL_DOWN_CIRCLE:I = 0x1

.field public static final MODE_COOL_DOWN_ELECTRONBEAM:I = 0x2

.field public static final MODE_FADE:I = 0x0

.field public static final MODE_WARM_UP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ElectronBeam"

.field private static USE_CIRCLE_ANIMATION:Z = false

.field private static final VSTRETCH_DURATION:F = 0.5f


# instance fields
.field private mCircleTex:Ljava/nio/FloatBuffer;

.field private mCircleVertices:Ljava/nio/FloatBuffer;

.field private mCircleVerticesOrig:Ljava/nio/FloatBuffer;

.field private mDisplayHeight:I

.field private mDisplayLayerStack:I

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mHalfHeight:F

.field private mHalfWidth:F

.field private mMode:I

.field private mPrepared:Z

.field private mRatioS:F

.field private mRatioT:F

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ElectronBeam;->USE_CIRCLE_ANIMATION:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 3
    .parameter "displayManager"

    .prologue
    const/16 v2, 0x8

    const/high16 v1, 0x3f80

    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    .line 98
    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 99
    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 139
    iput v1, p0, Lcom/android/server/power/ElectronBeam;->mRatioS:F

    iput v1, p0, Lcom/android/server/power/ElectronBeam;->mRatioT:F

    .line 144
    iput-object p1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 145
    return-void
.end method

.method private accelerate(FF)F
    .locals 2
    .parameter "value"
    .parameter "s"

    .prologue
    const/high16 v1, 0x4000

    .line 425
    div-float v0, p1, v1

    invoke-static {v0, p2}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    mul-float/2addr v0, v1

    return v0
.end method

.method private attachEglContext()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 783
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_0

    .line 790
    :goto_0
    return v0

    .line 786
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    const-string v1, "eglMakeCurrent"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private calcCoords(F)V
    .locals 9
    .parameter "normal"

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v7, 0x28

    if-gt v0, v7, :cond_0

    .line 439
    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v4, v7, 0x2

    .line 440
    .local v4, xIdx:I
    add-int/lit8 v6, v4, 0x1

    .line 442
    .local v6, yIdx:I
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    mul-float v3, v7, p1

    .line 443
    .local v3, x:F
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    mul-float v5, v7, p1

    .line 444
    .local v5, y:F
    iget v7, p0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    add-float/2addr v7, v3

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mRatioS:F

    mul-float v1, v7, v8

    .line 445
    .local v1, s:F
    iget v7, p0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    add-float/2addr v7, v5

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mRatioT:F

    mul-float v2, v7, v8

    .line 447
    .local v2, t:F
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    add-float/2addr v8, v3

    invoke-virtual {v7, v4, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 448
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    add-float/2addr v8, v5

    invoke-virtual {v7, v6, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 450
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v4, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 451
    iget-object v7, p0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/android/server/power/ElectronBeam;->mRatioT:F

    sub-float/2addr v8, v2

    invoke-virtual {v7, v6, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v1           #s:F
    .end local v2           #t:F
    .end local v3           #x:F
    .end local v4           #xIdx:I
    .end local v5           #y:F
    .end local v6           #yIdx:I
    :cond_0
    return-void
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .locals 24

    .prologue
    .line 488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    const/4 v7, 0x0

    const/high16 v8, 0x4000

    invoke-static {v2, v3, v7, v8}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 490
    .local v13, bitmap:Landroid/graphics/Bitmap;
    if-nez v13, :cond_0

    .line 491
    const-string v2, "ElectronBeam"

    const-string v3, "Could not take a screenshot!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v2, 0x0

    .line 616
    :goto_0
    return v2

    .line 495
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    .line 496
    const/4 v2, 0x0

    .line 614
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 499
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    if-nez v2, :cond_3

    .line 500
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 501
    const-string v2, "glGenTextures"

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 502
    const/4 v2, 0x0

    .line 611
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 614
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 504
    :cond_2
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    .line 507
    :cond_3
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    invoke-static {v2, v3}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 508
    const-string v2, "glBindTexture"

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 509
    const/4 v2, 0x0

    .line 611
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 614
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 512
    :cond_4
    const/high16 v18, 0x3f80

    .line 513
    .local v18, u:F
    const/high16 v19, 0x3f80

    .line 514
    .local v19, v:F
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    :try_start_5
    invoke-static {v2, v3, v13, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 515
    const-string v2, "glTexImage2D, first try"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 517
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->nextPowerOfTwo(I)I

    move-result v5

    .line 518
    .local v5, tw:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->nextPowerOfTwo(I)I

    move-result v6

    .line 519
    .local v6, th:I
    invoke-static {v13}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 520
    .local v4, format:I
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move v8, v4

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 523
    const-string v2, "glTexImage2D, second try"

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 524
    const/4 v2, 0x0

    .line 611
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 614
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 527
    :cond_5
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_7
    invoke-static {v2, v3, v7, v8, v13}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 528
    const-string v2, "glTexSubImage2D"

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    .line 529
    const/4 v2, 0x0

    .line 611
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 614
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 532
    :cond_6
    :try_start_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v2, v2

    int-to-float v3, v5

    div-float v18, v2, v3

    .line 533
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v2, v2

    int-to-float v3, v6

    div-float v19, v2, v3

    .line 536
    sget-boolean v2, Lcom/android/server/power/ElectronBeam;->USE_CIRCLE_ANIMATION:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 537
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/ElectronBeam;->mRatioS:F

    .line 538
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/ElectronBeam;->mRatioT:F

    .line 544
    .end local v4           #format:I
    .end local v5           #tw:I
    .end local v6           #th:I
    :cond_7
    sget-boolean v2, Lcom/android/server/power/ElectronBeam;->USE_CIRCLE_ANIMATION:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_a

    .line 549
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x4

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x5

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x6

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x7

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 602
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-static {v2, v3, v7, v8}, Landroid/opengl/GLES10;->glViewport(IIII)V

    .line 603
    const/16 v2, 0x1701

    invoke-static {v2}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 604
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 605
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v8, v2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v10, v2

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    .line 606
    const/16 v2, 0x1700

    invoke-static {v2}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 607
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 608
    const/16 v2, 0x1702

    invoke-static {v2}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 609
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 611
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 614
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 616
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 562
    :cond_a
    :try_start_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    .line 563
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    .line 564
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v17

    .line 565
    .local v17, maxRadius:F
    const v16, 0x3e20d97c

    .line 567
    .local v16, mAngleUnit:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/power/ElectronBeam;->mHalfWidth:F

    invoke-virtual {v2, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/power/ElectronBeam;->mHalfHeight:F

    invoke-virtual {v2, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/high16 v7, 0x3f00

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/power/ElectronBeam;->mRatioS:F

    mul-float/2addr v7, v8

    invoke-virtual {v2, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    const/high16 v7, 0x3f00

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/power/ElectronBeam;->mRatioT:F

    mul-float/2addr v7, v8

    invoke-virtual {v2, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 581
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    const/16 v2, 0x28

    if-gt v14, v2, :cond_9

    .line 583
    int-to-float v2, v14

    mul-float v15, v16, v2

    .line 584
    .local v15, mAngle:F
    const/16 v2, 0x28

    if-ne v14, v2, :cond_b

    .line 586
    const/4 v15, 0x0

    .line 589
    :cond_b
    invoke-static {v15}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    mul-float v20, v17, v2

    .line 590
    .local v20, x:F
    invoke-static {v15}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float v22, v17, v2

    .line 592
    .local v22, y:F
    add-int/lit8 v2, v14, 0x1

    mul-int/lit8 v21, v2, 0x2

    .line 593
    .local v21, xIdx:I
    add-int/lit8 v23, v21, 0x1

    .line 595
    .local v23, yIdx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 581
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 611
    .end local v14           #i:I
    .end local v15           #mAngle:F
    .end local v16           #mAngleUnit:F
    .end local v17           #maxRadius:F
    .end local v18           #u:F
    .end local v19           #v:F
    .end local v20           #x:F
    .end local v21           #xIdx:I
    .end local v22           #y:F
    .end local v23           #yIdx:I
    :catchall_0
    move-exception v2

    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 614
    :catchall_1
    move-exception v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    throw v2
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .locals 1
    .parameter "func"

    .prologue
    .line 843
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "func"
    .parameter "log"

    .prologue
    .line 847
    const/4 v1, 0x0

    .line 849
    .local v1, hadError:Z
    :goto_0
    invoke-static {}, Landroid/opengl/GLES10;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_1

    .line 850
    if-eqz p1, :cond_0

    .line 851
    const-string v2, "ElectronBeam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 855
    :cond_1
    return v1
.end method

.method private createEglContext()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_1

    .line 635
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 636
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_0

    .line 637
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 678
    :goto_0
    return v2

    .line 641
    :cond_0
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 642
    .local v9, version:[I
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 644
    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    .end local v9           #version:[I
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_3

    .line 650
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 657
    .local v1, eglConfigAttribList:[I
    new-array v6, v10, [I

    .line 658
    .local v6, numEglConfigs:[I
    new-array v3, v10, [Landroid/opengl/EGLConfig;

    .line 659
    .local v3, eglConfigs:[Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 661
    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_2
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 667
    .end local v1           #eglConfigAttribList:[I
    .end local v3           #eglConfigs:[Landroid/opengl/EGLConfig;
    .end local v6           #numEglConfigs:[I
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 668
    new-array v8, v10, [I

    const/16 v0, 0x3038

    aput v0, v8, v2

    .line 671
    .local v8, eglContextAttribList:[I
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    .line 673
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 674
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .end local v8           #eglContextAttribList:[I
    :cond_4
    move v2, v10

    .line 678
    goto :goto_0

    .line 650
    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private createEglSurface()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 727
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_0

    .line 728
    new-array v0, v2, [I

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 731
    .local v0, eglSurfaceAttribList:[I
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v4, v5, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 733
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_0

    .line 734
    const-string v2, "eglCreateWindowSurface"

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 738
    .end local v0           #eglSurfaceAttribList:[I
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 833
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 834
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 835
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .locals 8

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 696
    :cond_0
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 701
    :try_start_1
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-nez v0, :cond_2

    .line 702
    const v6, 0x20004

    .line 706
    .local v6, flags:I
    :goto_0
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v2, "ElectronBeam"

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 715
    .end local v6           #flags:I
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayerStack(I)V

    .line 716
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 718
    new-instance v0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    .line 719
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->onDisplayTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 721
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 723
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 704
    :cond_2
    const/16 v6, 0x404

    .restart local v6       #flags:I
    goto :goto_0

    .line 709
    .end local v6           #flags:I
    :catch_0
    move-exception v7

    .line 710
    .local v7, ex:Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    const-string v0, "ElectronBeam"

    const-string v1, "Unable to create surface."

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 711
    const/4 v0, 0x0

    .line 721
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_1

    .end local v7           #ex:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0
.end method

.method private destroyEglSurface()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 746
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 748
    :cond_1
    return-void
.end method

.method private destroyScreenshotTexture()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 620
    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    if-eqz v0, :cond_0

    .line 621
    iput-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    .line 622
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    .line 625
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    .line 631
    :cond_0
    return-void

    .line 627
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0
.end method

.method private destroySurface()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 751
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->dispose()V

    .line 753
    iput-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    .line 754
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 760
    iput-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    .line 762
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    .line 764
    :cond_0
    return-void

    .line 758
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0
.end method

.method private detachEglContext()V
    .locals 4

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 798
    :cond_0
    return-void
.end method

.method private drawCircleLcdOffAnimation(F)V
    .locals 9
    .parameter "stretch"

    .prologue
    const/16 v8, 0x2601

    const/16 v7, 0x1406

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 399
    const/high16 v1, 0x3f80

    invoke-direct {p0, p1}, Lcom/android/server/power/ElectronBeam;->easeInEaseOut(F)F

    move-result v2

    sub-float v0, v1, v2

    .line 403
    .local v0, normal:F
    invoke-direct {p0, v0}, Lcom/android/server/power/ElectronBeam;->calcCoords(F)V

    .line 405
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    invoke-static {v6, v7, v5, v1}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 406
    const v1, 0x8074

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 408
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 409
    const/16 v1, 0x2800

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 410
    const/16 v1, 0x2801

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 411
    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 412
    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 413
    invoke-static {v4}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 415
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    invoke-static {v6, v7, v5, v1}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 416
    const v1, 0x8078

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 418
    const/4 v1, 0x6

    const/16 v2, 0x2a

    invoke-static {v1, v5, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 420
    const v1, 0x8074

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 421
    const v1, 0x8078

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 422
    return-void
.end method

.method private drawHStretch(F)V
    .locals 7
    .parameter "stretch"

    .prologue
    const v6, 0x8074

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 375
    const/high16 v1, 0x4100

    invoke-static {p1, v1}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 380
    .local v0, ag:F
    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    .line 382
    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v5, v3}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 383
    invoke-static {v6}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 386
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/power/ElectronBeam;->setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 387
    sub-float v1, v4, v0

    sub-float v2, v4, v0

    sub-float v3, v4, v0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 388
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v5, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 391
    invoke-static {v6}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 393
    :cond_0
    return-void
.end method

.method private drawVStretch(F)V
    .locals 12
    .parameter "stretch"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x4

    const/16 v9, 0xde1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 303
    const/high16 v3, 0x40f0

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v2

    .line 304
    .local v2, ar:F
    const/high16 v3, 0x4100

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v1

    .line 305
    .local v1, ag:F
    const/high16 v3, 0x4108

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 312
    .local v0, ab:F
    invoke-static {v8, v8}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 313
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 316
    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v7, v5}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 317
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 320
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    aget v3, v3, v7

    invoke-static {v9, v3}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 321
    const/16 v4, 0x2300

    const/16 v5, 0x2200

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    const/16 v3, 0x2100

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 323
    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v9, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 325
    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v9, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 327
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v9, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 329
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v9, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 331
    invoke-static {v9}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 332
    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v7, v5}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 333
    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 336
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 337
    invoke-static {v8, v7, v7, v8}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 338
    invoke-static {v11, v7, v10}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 341
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v1}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 342
    invoke-static {v7, v8, v7, v8}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 343
    invoke-static {v11, v7, v10}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 346
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v0}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 347
    invoke-static {v7, v7, v8, v8}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 348
    invoke-static {v11, v7, v10}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 351
    invoke-static {v9}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 352
    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 353
    invoke-static {v8, v8, v8, v8}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 356
    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-ne v3, v10, :cond_0

    .line 357
    const/high16 v3, 0x3f80

    invoke-static {v1, v1, v1, v3}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 358
    invoke-static {v11, v7, v10}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 362
    :cond_0
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 363
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 364
    return-void

    .line 321
    :cond_1
    const/16 v3, 0x1e01

    goto/16 :goto_0
.end method

.method private easeInEaseOut(F)F
    .locals 4
    .parameter "value"

    .prologue
    .line 429
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    return v0
.end method

.method private static logEglError(Ljava/lang/String;)V
    .locals 3
    .parameter "func"

    .prologue
    .line 839
    const-string v0, "ElectronBeam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    return-void
.end method

.method private static nextPowerOfTwo(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 829
    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    shl-int/2addr v0, v1

    return v0
.end method

.method private static scurve(FF)F
    .locals 5
    .parameter "value"
    .parameter "s"

    .prologue
    const/high16 v4, 0x3f00

    .line 809
    sub-float v1, p0, v4

    .line 814
    .local v1, x:F
    invoke-static {v1, p1}, Lcom/android/server/power/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v2, v3, v4

    .line 818
    .local v2, y:F
    invoke-static {v4, p1}, Lcom/android/server/power/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v0, v3, v4

    .line 821
    .local v0, v:F
    div-float v3, v2, v0

    mul-float/2addr v3, v4

    add-float/2addr v3, v4

    return v3
.end method

.method private static setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 7
    .parameter "vtx"
    .parameter "dw"
    .parameter "dh"
    .parameter "a"

    .prologue
    const/high16 v6, 0x3f80

    const/high16 v5, 0x3f00

    .line 465
    mul-float v4, p1, p3

    add-float v1, p1, v4

    .line 466
    .local v1, w:F
    const/high16 v0, 0x3f80

    .line 467
    .local v0, h:F
    sub-float v4, p1, v1

    mul-float v2, v4, v5

    .line 468
    .local v2, x:F
    sub-float v4, p2, v6

    mul-float v3, v4, v5

    .line 469
    .local v3, y:F
    invoke-static {p0, v2, v3, v1, v6}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 470
    return-void
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .locals 2
    .parameter "vtx"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 477
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 478
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 479
    const/4 v0, 0x3

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 480
    const/4 v0, 0x4

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 481
    const/4 v0, 0x5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 482
    const/4 v0, 0x6

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 483
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 484
    return-void
.end method

.method private static setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 6
    .parameter "vtx"
    .parameter "dw"
    .parameter "dh"
    .parameter "a"

    .prologue
    const/high16 v5, 0x3f00

    .line 457
    mul-float v4, p1, p3

    add-float v1, p1, v4

    .line 458
    .local v1, w:F
    mul-float v4, p2, p3

    sub-float v0, p2, v4

    .line 459
    .local v0, h:F
    sub-float v4, p1, v1

    mul-float v2, v4, v5

    .line 460
    .local v2, x:F
    sub-float v4, p2, v0

    mul-float v3, v4, v5

    .line 461
    .local v3, y:F
    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 462
    return-void
.end method

.method private showSurface(F)Z
    .locals 3
    .parameter "alpha"

    .prologue
    const/4 v2, 0x1

    .line 767
    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 768
    :cond_0
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const v1, 0x40000001

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    .line 771
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->setAlpha(F)V

    .line 772
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 776
    iput-boolean v2, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    .line 777
    iput p1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    .line 779
    :cond_1
    return v2

    .line 774
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0
.end method

.method private static sigmoid(FF)F
    .locals 2
    .parameter "x"
    .parameter "s"

    .prologue
    const/high16 v1, 0x3f80

    .line 825
    neg-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/FloatMath;->exp(F)F

    move-result v0

    add-float/2addr v0, v1

    div-float v0, v1, v0

    return v0
.end method

.method private tryPrepare()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createEglContext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createEglSurface()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->captureScreenshotTextureAndSetViewport()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 220
    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroyScreenshotTexture()V

    .line 236
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroyEglSurface()V

    .line 237
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroySurface()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    .line 239
    return-void
.end method

.method public draw(F)Z
    .locals 7
    .parameter "level"

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x3f00

    const/high16 v5, 0x3f80

    .line 253
    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-nez v1, :cond_2

    .line 258
    sub-float v0, v5, p1

    invoke-direct {p0, v0}, Lcom/android/server/power/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_0

    .line 261
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    :try_start_0
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 267
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES10;->glClear(I)V

    .line 271
    sget-boolean v1, Lcom/android/server/power/ElectronBeam;->USE_CIRCLE_ANIMATION:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 272
    sub-float v1, v5, p1

    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawCircleLcdOffAnimation(F)V

    .line 283
    :goto_1
    const-string v1, "drawFrame"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 289
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    goto :goto_0

    .line 275
    :cond_3
    cmpg-float v1, p1, v6

    if-gez v1, :cond_4

    .line 276
    div-float v1, p1, v6

    sub-float v1, v5, v1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawHStretch(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 289
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0

    .line 278
    :cond_4
    sub-float v1, p1, v6

    div-float/2addr v1, v6

    sub-float v1, v5, v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawVStretch(F)V

    goto :goto_1

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    .line 291
    invoke-direct {p0, v5}, Lcom/android/server/power/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 859
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 860
    const-string v0, "Electron Beam State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public prepare(I)Z
    .locals 7
    .parameter "mode"

    .prologue
    const/16 v6, 0x54

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 160
    sput-boolean v2, Lcom/android/server/power/ElectronBeam;->USE_CIRCLE_ANIMATION:Z

    .line 162
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 163
    iput v5, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    .line 173
    :goto_0
    sget-boolean v4, Lcom/android/server/power/ElectronBeam;->USE_CIRCLE_ANIMATION:Z

    if-eqz v4, :cond_0

    .line 174
    invoke-static {v6}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/ElectronBeam;->mCircleVertices:Ljava/nio/FloatBuffer;

    .line 175
    invoke-static {v6}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/ElectronBeam;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    .line 176
    invoke-static {v6}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/ElectronBeam;->mCircleTex:Ljava/nio/FloatBuffer;

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 183
    .local v0, displayInfo:Landroid/view/DisplayInfo;
    iget v4, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    .line 184
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    .line 185
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    .line 188
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->tryPrepare()Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/android/server/power/ElectronBeam;->dismiss()V

    .line 208
    :goto_1
    return v2

    .line 164
    .end local v0           #displayInfo:Landroid/view/DisplayInfo;
    :cond_1
    if-ne p1, v3, :cond_2

    .line 166
    sput-boolean v3, Lcom/android/server/power/ElectronBeam;->USE_CIRCLE_ANIMATION:Z

    .line 167
    iput v5, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    goto :goto_0

    .line 170
    :cond_2
    iput p1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    goto :goto_0

    .line 194
    .restart local v0       #displayInfo:Landroid/view/DisplayInfo;
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    .line 203
    if-ne p1, v5, :cond_4

    .line 204
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 205
    const/high16 v2, 0x3f80

    invoke-virtual {p0, v2}, Lcom/android/server/power/ElectronBeam;->draw(F)Z

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    :cond_4
    move v2, v3

    .line 208
    goto :goto_1
.end method
