.class Lcom/lge/camera/components/OpenGLYUVRenderer;
.super Ljava/lang/Object;
.source "OpenGLYUVRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;
    }
.end annotation


# static fields
.field private static final ONE:I = 0xffff

.field private static final squareVertices:[I

.field private static final squareVerticesPort:[I

.field private static final textureVertices:[I

.field private static final textureVertices_hFlip:[I


# instance fields
.field color:F

.field g_index:I

.field private final mFragmentShader:Ljava/lang/String;

.field private mIsRendererReady:Z

.field private mIsRenderingState:Z

.field private mProgram:I

.field private mRA:Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;

.field private mSquareVerLand:Ljava/nio/IntBuffer;

.field private mSquareVerPort:Ljava/nio/IntBuffer;

.field private mSquareVers:Ljava/nio/IntBuffer;

.field private mTexCoordsAttr:I

.field private mTextureVer:Ljava/nio/IntBuffer;

.field private mTextureVerHflip:Ljava/nio/IntBuffer;

.field private mUniformVideoFrame:I

.field private mUniformVideoFrameUV:I

.field private final mVertexShader:Ljava/lang/String;

.field private mVerticesAttr:I

.field private mVideoFrameTexture:[I

.field private mYuvData:[B

.field private mYuvHeight:I

.field private mYuvWidth:I

.field private mflipH:Z

.field needCreateTexture:Z

.field uv_array:[B

.field y_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 390
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->squareVertices:[I

    .line 391
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->squareVerticesPort:[I

    .line 393
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->textureVertices:[I

    .line 394
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->textureVertices_hFlip:[I

    return-void

    .line 390
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0xfft 0xfft
        0x1t 0x0t 0xfft 0xfft
        0xfft 0xfft 0x0t 0x0t
        0x1t 0x0t 0xfft 0xfft
        0x1t 0x0t 0xfft 0xfft
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    .line 391
    :array_1
    .array-data 0x4
        0x1t 0x0t 0xfft 0xfft
        0xfft 0xfft 0x0t 0x0t
        0x1t 0x0t 0xfft 0xfft
        0x1t 0x0t 0xfft 0xfft
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0x1t 0x0t 0xfft 0xfft
    .end array-data

    .line 393
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 394
    :array_3
    .array-data 0x4
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;)V
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvData:[B

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    .line 48
    iput-boolean v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mflipH:Z

    .line 49
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRendererReady:Z

    .line 51
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    .line 52
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mRA:Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;

    .line 80
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    .line 81
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    .line 147
    iput-boolean v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->needCreateTexture:Z

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->color:F

    .line 396
    const-string v0, "attribute vec4 position;\nattribute highp vec4 inputTextureCoordinate;\nvarying highp vec2 textureCoordinate;\nvoid main() {\n          gl_Position = position;\n          textureCoordinate = inputTextureCoordinate.xy;\n}\n"

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVertexShader:Ljava/lang/String;

    .line 403
    const-string v0, "varying highp vec2 textureCoordinate;                                                                                           \n                                                                                                                                                                                         \nuniform highp sampler2D videoFrame;                                                                                                           \nuniform highp sampler2D videoFrameUV;                                                                                                       \n                                                                                                                                                                                              \nconst highp mat3 yuv2rgb = mat3(                                                                                                    \n                          1, 0, 1.596,                                                                            \n                          1, -0.391, -0.813,                                                              \n                          1, 2.018, 0                                                                                     \n                          );                                                                                                              \n                                                                                                                                                                                              \nvoid main() {                                                                                                                                                               \n     highp vec3 yuv = vec3(                                                                                                                                  \n     1.1643 * (texture2D(videoFrame, textureCoordinate).r - 0.0625),        \n     texture2D(videoFrameUV, textureCoordinate).a - 0.5,                                          \n     texture2D(videoFrameUV, textureCoordinate).r - 0.5                                \n     );                                                                                                                                                                       \n                                                                                                                                                                                         \n    highp vec3 rgb = yuv * yuv2rgb;                                                                                                             \n                                                                                                                                                                                         \n    gl_FragColor = vec4(rgb, 1.0);                                                                                                       \n}                                                                                                                                                                                        \n"

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mFragmentShader:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->squareVertices:[I

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->loadBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerLand:Ljava/nio/IntBuffer;

    .line 59
    sget-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->squareVerticesPort:[I

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->loadBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerPort:Ljava/nio/IntBuffer;

    .line 60
    sget-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->textureVertices:[I

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->loadBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/IntBuffer;

    .line 61
    sget-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->textureVertices_hFlip:[I

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->loadBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/IntBuffer;

    .line 62
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mRA:Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;Z)V
    .locals 1
    .parameter "action"
    .parameter "landscape"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/components/OpenGLYUVRenderer;-><init>(Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;)V

    .line 67
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerLand:Ljava/nio/IntBuffer;

    :goto_0
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVers:Ljava/nio/IntBuffer;

    .line 68
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerPort:Ljava/nio/IntBuffer;

    goto :goto_0
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 369
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 370
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 338
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 339
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 364
    :cond_0
    :goto_0
    return v2

    .line 343
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 344
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 345
    goto :goto_0

    .line 348
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 349
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 350
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 351
    const-string v5, "glAttachShader"

    invoke-direct {p0, v5}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 352
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 353
    const-string v5, "glAttachShader"

    invoke-direct {p0, v5}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 354
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 355
    new-array v0, v6, [I

    .line 356
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 357
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 358
    const-string v4, "CameraApp"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v4, "CameraApp"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 361
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadBuffer([I)Ljava/nio/IntBuffer;
    .locals 4
    .parameter "intBuffer"

    .prologue
    .line 71
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .local v0, byteBuf:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 73
    .local v1, intBuf:Ljava/nio/IntBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    return-object v1
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 322
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 323
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 324
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 325
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 326
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 327
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 328
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v2, "CameraApp"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 331
    const/4 v1, 0x0

    .line 334
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method


# virtual methods
.method public clearYuvData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvData:[B

    .line 85
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    .line 86
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    .line 88
    return-void
.end method

.method public closeYUVRenderer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->clearYuvData()V

    .line 93
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVers:Ljava/nio/IntBuffer;

    .line 94
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerLand:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerLand:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 96
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerLand:Ljava/nio/IntBuffer;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerPort:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerPort:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 100
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerPort:Ljava/nio/IntBuffer;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 104
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/IntBuffer;

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 108
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/IntBuffer;

    .line 110
    :cond_3
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mRA:Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;

    .line 111
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "glUnused"

    .prologue
    const v9, 0x812f

    const/16 v7, 0x1401

    const/4 v12, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 161
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 162
    const/16 v2, 0x4100

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 164
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvData:[B

    if-nez v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    if-eqz v2, :cond_0

    .line 171
    iget-boolean v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRendererReady:Z

    if-nez v2, :cond_2

    .line 172
    iput-boolean v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    goto :goto_0

    .line 176
    :cond_2
    iput-boolean v12, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    .line 178
    iget v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 179
    const-string v2, "glUseProgram"

    invoke-direct {p0, v2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 181
    iget-boolean v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->needCreateTexture:Z

    if-eqz v2, :cond_3

    .line 182
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 183
    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 184
    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 185
    const/16 v2, 0x2802

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 186
    const/16 v2, 0x2803

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 188
    const/16 v2, 0x1909

    iget v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvWidth:I

    iget v4, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvHeight:I

    const/16 v6, 0x1909

    iget-object v5, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 191
    const-string v2, "set Y image"

    invoke-direct {p0, v2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    aget v2, v2, v12

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 194
    const/16 v2, 0x2801

    const/16 v3, 0x2600

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 195
    const/16 v2, 0x2800

    const/16 v3, 0x2600

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 196
    const/16 v2, 0x2802

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 197
    const/16 v2, 0x2803

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 200
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x190a

    :try_start_0
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvWidth:I

    div-int/lit8 v5, v0, 0x2

    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvHeight:I

    div-int/lit8 v6, v0, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x190a

    const/16 v9, 0x1401

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 205
    const-string v0, "set UV image"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    :goto_1
    iput-boolean v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->needCreateTexture:Z

    .line 213
    const-string v0, "CameraApp"

    const-string v2, "DrawFrame :Need End"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iput-boolean v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    goto/16 :goto_0

    .line 206
    :catch_0
    move-exception v11

    .line 207
    .local v11, e:Ljava/lang/NullPointerException;
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenGLYUVRenderer error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v11

    .line 209
    .local v11, e:Ljava/lang/RuntimeException;
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenGLYUVRenderer error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 217
    .end local v11           #e:Ljava/lang/RuntimeException;
    :cond_3
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 218
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 221
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    iget v6, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvWidth:I

    iget v7, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvHeight:I

    const/16 v8, 0x1909

    const/16 v9, 0x1401

    iget-object v10, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 227
    const-string v2, "set Y image"

    invoke-direct {p0, v2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 234
    :goto_2
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 235
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    aget v2, v2, v12

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 238
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvWidth:I

    div-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvHeight:I

    div-int/lit8 v7, v0, 0x2

    const/16 v8, 0x190a

    const/16 v9, 0x1401

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 244
    const-string v0, "set UV image"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    .line 258
    :goto_3
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mUniformVideoFrame:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 259
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mUniformVideoFrameUV:I

    invoke-static {v0, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 261
    iget v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVerticesAttr:I

    const/4 v3, 0x2

    const/16 v4, 0x140c

    iget-object v7, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVers:Ljava/nio/IntBuffer;

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 262
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVerticesAttr:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 264
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mflipH:Z

    if-eqz v0, :cond_4

    .line 265
    iget v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTexCoordsAttr:I

    const/4 v3, 0x2

    const/16 v4, 0x140c

    iget-object v7, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/IntBuffer;

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 266
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTexCoordsAttr:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 272
    :goto_4
    const-string v0, "test4"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 275
    iput-boolean v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    goto/16 :goto_0

    .line 228
    :catch_2
    move-exception v11

    .line 229
    .local v11, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenGLYUVRenderer error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 230
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v11

    .line 231
    .local v11, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenGLYUVRenderer error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 245
    .end local v11           #e:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v11

    .line 246
    .local v11, e:Ljava/lang/NullPointerException;
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenGLYUVRenderer error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 247
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_5
    move-exception v11

    .line 248
    .local v11, e:Ljava/lang/RuntimeException;
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenGLYUVRenderer error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 268
    .end local v11           #e:Ljava/lang/RuntimeException;
    :cond_4
    iget v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTexCoordsAttr:I

    const/4 v3, 0x2

    const/16 v4, 0x140c

    iget-object v7, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/IntBuffer;

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 269
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTexCoordsAttr:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto/16 :goto_4
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "glUnused"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 285
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLSurface onSurfaceChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iput-boolean v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRendererReady:Z

    .line 288
    invoke-static {v3, v3, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 290
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mRA:Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "CameraApp"

    const-string v1, "OpenGL rederer-onSurfaceChanged:startPreview"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mRA:Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;

    invoke-interface {v0}, Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;->startPreview()V

    .line 294
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "glUnused"
    .parameter "config"

    .prologue
    .line 300
    const-string v0, "attribute vec4 position;\nattribute highp vec4 inputTextureCoordinate;\nvarying highp vec2 textureCoordinate;\nvoid main() {\n          gl_Position = position;\n          textureCoordinate = inputTextureCoordinate.xy;\n}\n"

    const-string v1, "varying highp vec2 textureCoordinate;                                                                                           \n                                                                                                                                                                                         \nuniform highp sampler2D videoFrame;                                                                                                           \nuniform highp sampler2D videoFrameUV;                                                                                                       \n                                                                                                                                                                                              \nconst highp mat3 yuv2rgb = mat3(                                                                                                    \n                          1, 0, 1.596,                                                                            \n                          1, -0.391, -0.813,                                                              \n                          1, 2.018, 0                                                                                     \n                          );                                                                                                              \n                                                                                                                                                                                              \nvoid main() {                                                                                                                                                               \n     highp vec3 yuv = vec3(                                                                                                                                  \n     1.1643 * (texture2D(videoFrame, textureCoordinate).r - 0.0625),        \n     texture2D(videoFrameUV, textureCoordinate).a - 0.5,                                          \n     texture2D(videoFrameUV, textureCoordinate).r - 0.5                                \n     );                                                                                                                                                                       \n                                                                                                                                                                                         \n    highp vec3 rgb = yuv * yuv2rgb;                                                                                                             \n                                                                                                                                                                                         \n    gl_FragColor = vec4(rgb, 1.0);                                                                                                       \n}                                                                                                                                                                                        \n"

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    .line 301
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v0, "mProgram"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 306
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVerticesAttr:I

    .line 307
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTexCoordsAttr:I

    .line 312
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    const-string v1, "videoFrame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mUniformVideoFrame:I

    .line 313
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    const-string v1, "videoFrameUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mUniformVideoFrameUV:I

    .line 314
    const-string v0, "glGetUniformLocation"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 317
    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNeedCreateTexture(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->needCreateTexture:Z

    .line 151
    return-void
.end method

.method public declared-synchronized setSquareVertices(Z)V
    .locals 1
    .parameter "windowLandscape"

    .prologue
    .line 376
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerLand:Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVers:Ljava/nio/IntBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :goto_0
    monitor-exit p0

    return-void

    .line 379
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVerPort:Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVers:Ljava/nio/IntBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setYuvData([BII)Z
    .locals 6
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    iget-boolean v4, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    if-eqz v4, :cond_0

    .line 144
    :goto_0
    return v2

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvData:[B

    .line 120
    iput p2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvWidth:I

    .line 121
    iput p3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvHeight:I

    .line 123
    mul-int v1, p2, p3

    .line 124
    .local v1, y_size:I
    mul-int v2, p2, p3

    div-int/lit8 v0, v2, 0x2

    .line 126
    .local v0, uv_size:I
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    array-length v2, v2

    if-eq v2, v1, :cond_2

    .line 127
    :cond_1
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    .line 128
    iput-boolean v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->needCreateTexture:Z

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    array-length v2, v2

    if-eq v2, v0, :cond_4

    .line 132
    :cond_3
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    .line 135
    :cond_4
    monitor-enter p0

    .line 136
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    const/4 v5, 0x0

    invoke-static {p1, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iput-boolean v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRendererReady:Z

    move v2, v3

    .line 144
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setflipH(Z)V
    .locals 0
    .parameter "flipH"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mflipH:Z

    .line 280
    return-void
.end method
