.class public Landroid/webkit/HTML5VideoInline;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoInline.java"


# static fields
.field private static mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private static mSurfaceTextureCreated:Z

.field private static mTextureNames:[I

.field private static mVideoLayerUsingSurfaceTexture:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sput-object v1, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTextureCreated:Z

    .line 39
    sput-object v1, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 42
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "skipPrepare"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/HTML5VideoInline;->init(IIZ)V

    .line 54
    return-void
.end method

.method public static cleanupSurfaceTexture()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 118
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    .line 119
    return-void
.end method

.method public static getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 4
    .parameter "videoLayerId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    sget v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    if-ne p0, v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-nez v0, :cond_1

    .line 94
    :cond_0
    new-array v0, v2, [I

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 95
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 96
    new-instance v0, Landroid/graphics/SurfaceTexture;

    sget-object v1, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v1, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 97
    sput-boolean v2, Landroid/webkit/HTML5VideoInline;->mSurfaceTextureCreated:Z

    .line 99
    :cond_1
    sput p0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    .line 100
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method private setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 132
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 135
    :cond_0
    return-void
.end method

.method public static surfaceTextureDeleted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 106
    sget-boolean v1, Landroid/webkit/HTML5VideoInline;->mSurfaceTextureCreated:Z

    if-ne v1, v0, :cond_0

    sget-object v1, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decideDisplayMode()V
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getVideoLayerId()I

    move-result v2

    invoke-static {v2}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 59
    .local v1, surfaceTexture:Landroid/graphics/SurfaceTexture;
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 60
    .local v0, surface:Landroid/view/Surface;
    sget-object v2, Landroid/webkit/HTML5VideoInline;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 61
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 62
    return-void
.end method

.method public deleteSurfaceTexture()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Landroid/webkit/HTML5VideoInline;->cleanupSurfaceTexture()V

    .line 113
    return-void
.end method

.method public getTextureName()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    sget-object v1, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v0, v1, v0

    .line 127
    :cond_0
    return v0
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 82
    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 69
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoInline;->setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 72
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 76
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getPauseDuringPreparing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 50
    :cond_0
    return-void
.end method
