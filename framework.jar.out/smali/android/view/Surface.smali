.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$ScreenCaptureParam;,
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$PhysicalDisplayInfo;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_HDMI:I = 0x1

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final FX_SURFACE_BLUR:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final FX_SURFACE_SCREENSHOT:I = 0x30000

#the value of this static final field might be set in the static constructor
.field private static final HEADLESS:Z = false

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final OPAQUE:I = 0x400

.field public static final PROTECTED_APP:I = 0x800

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SECURE:I = 0x80

.field public static final SURFACE_HIDDEN:I = 0x1

.field public static final SWIVEL_ROTATION_0:I = 0x4

.field public static final SWIVEL_ROTATION_90:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private mCanvasSaveCount:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mGenerationId:I

.field private mHeight:I

.field private mName:Ljava/lang/String;

.field private mNativeSurface:I

.field private mNativeSurfaceControl:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "1"

    const-string/jumbo v1, "ro.config.headless"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/Surface;->HEADLESS:Z

    .line 43
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 296
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 223
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 297
    invoke-static {}, Landroid/view/Surface;->checkHeadless()V

    .line 299
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 363
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 223
    new-instance v1, Landroid/view/Surface$CompatibleCanvas;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "surfaceTexture must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_0
    invoke-static {}, Landroid/view/Surface;->checkHeadless()V

    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 372
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    iget-object v1, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "release"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 379
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 375
    .local v0, ex:Landroid/view/Surface$OutOfResourcesException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 3
    .parameter "session"
    .parameter "name"
    .parameter "w"
    .parameter "h"
    .parameter "format"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 223
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    if-nez p2, :cond_1

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_2

    .line 335
    const-string v0, "Surface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    :cond_2
    invoke-static {}, Landroid/view/Surface;->checkHeadless()V

    .line 345
    iput-object p2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 346
    iput p3, p0, Landroid/view/Surface;->mWidth:I

    .line 347
    iput p4, p0, Landroid/view/Surface;->mHeight:I

    .line 348
    invoke-direct/range {p0 .. p6}, Landroid/view/Surface;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 350
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method static synthetic access$100(Landroid/view/Surface;)Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/Surface;->mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static blankDisplay(Landroid/os/IBinder;)V
    .locals 2
    .parameter "displayToken"

    .prologue
    .line 691
    if-nez p0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    invoke-static {p0}, Landroid/view/Surface;->nativeBlankDisplay(Landroid/os/IBinder;)V

    .line 695
    return-void
.end method

.method private static checkHeadless()V
    .locals 2

    .prologue
    .line 773
    sget-boolean v0, Landroid/view/Surface;->HEADLESS:Z

    if-eqz v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Device is headless"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    return-void
.end method

.method public static closeTransaction()V
    .locals 0

    .prologue
    .line 554
    invoke-static {}, Landroid/view/Surface;->nativeCloseTransaction()V

    .line 555
    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 2
    .parameter "name"
    .parameter "secure"

    .prologue
    .line 641
    if-nez p0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    invoke-static {p0, p1}, Landroid/view/Surface;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .locals 1
    .parameter "builtInDisplayId"

    .prologue
    .line 636
    invoke-static {p0}, Landroid/view/Surface;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayInfo(Landroid/os/IBinder;Landroid/view/Surface$PhysicalDisplayInfo;)Z
    .locals 2
    .parameter "displayToken"
    .parameter "outInfo"

    .prologue
    .line 680
    if-nez p0, :cond_0

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_0
    if-nez p1, :cond_1

    .line 684
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_1
    invoke-static {p0, p1}, Landroid/view/Surface;->nativeGetDisplayInfo(Landroid/os/IBinder;Landroid/view/Surface$PhysicalDisplayInfo;)Z

    move-result v0

    return v0
.end method

.method private static native nativeBlankDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeCloseTransaction()V
.end method

.method private native nativeCopyFrom(Landroid/view/Surface;)V
.end method

.method private native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private native nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private native nativeDestroy()V
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetDisplayInfo(Landroid/os/IBinder;Landroid/view/Surface$PhysicalDisplayInfo;)Z
.end method

.method private native nativeGetIdentity()I
.end method

.method private native nativeIsConsumerRunningBehind()Z
.end method

.method private native nativeIsValid()Z
.end method

.method private native nativeLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
.end method

.method private static native nativeOpenTransaction()V
.end method

.method private static native nativePartialScreenshot(Landroid/os/IBinder;IIIIIII)Landroid/graphics/Bitmap;
.end method

.method private native nativeReadFromParcel(Landroid/os/Parcel;)V
.end method

.method private native nativeRelease()V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;
.end method

.method private native nativeSetAlpha(F)V
.end method

.method private static native nativeSetAnimationTransaction()V
.end method

.method private static native nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method private static native nativeSetDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
.end method

.method private native nativeSetFlags(II)V
.end method

.method private native nativeSetLayer(I)V
.end method

.method private native nativeSetLayerStack(I)V
.end method

.method private native nativeSetMatrix(FFFF)V
.end method

.method private native nativeSetPosition(FF)V
.end method

.method private native nativeSetSize(II)V
.end method

.method private native nativeSetTransparentRegionHint(Landroid/graphics/Region;)V
.end method

.method private native nativeSetWindowCrop(Landroid/graphics/Rect;)V
.end method

.method private native nativeTransferFrom(Landroid/view/Surface;)V
.end method

.method private static native nativeUnblankDisplay(Landroid/os/IBinder;)V
.end method

.method private native nativeUnlockCanvasAndPost(Landroid/graphics/Canvas;)V
.end method

.method private native nativeWriteToParcel(Landroid/os/Parcel;)V
.end method

.method public static openTransaction()V
    .locals 0

    .prologue
    .line 549
    invoke-static {}, Landroid/view/Surface;->nativeOpenTransaction()V

    .line 550
    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 504
    invoke-static {v3}, Landroid/view/Surface;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 505
    .local v0, displayToken:Landroid/os/IBinder;
    const/4 v5, 0x1

    move v1, p0

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/view/Surface;->nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(IIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "minLayer"
    .parameter "maxLayer"

    .prologue
    const/4 v5, 0x0

    .line 526
    invoke-static {v5}, Landroid/view/Surface;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .local v0, displayToken:Landroid/os/IBinder;
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 527
    invoke-static/range {v0 .. v5}, Landroid/view/Surface;->nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(IIIIIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "droppedLayer1"
    .parameter "droppedLayer2"
    .parameter "droppedLayer3"

    .prologue
    .line 538
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/Surface;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .local v0, displayToken:Landroid/os/IBinder;
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 539
    invoke-static/range {v0 .. v7}, Landroid/view/Surface;->nativePartialScreenshot(Landroid/os/IBinder;IIIIIII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static setAnimationTransaction()V
    .locals 0

    .prologue
    .line 559
    invoke-static {}, Landroid/view/Surface;->nativeSetAnimationTransaction()V

    .line 560
    return-void
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "displayToken"
    .parameter "layerStack"

    .prologue
    .line 657
    if-nez p0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    invoke-static {p0, p1}, Landroid/view/Surface;->nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V

    .line 661
    return-void
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "displayToken"
    .parameter "orientation"
    .parameter "layerStackRect"
    .parameter "displayRect"

    .prologue
    .line 666
    if-nez p0, :cond_0

    .line 667
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_0
    if-nez p2, :cond_1

    .line 670
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "layerStackRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_1
    if-nez p3, :cond_2

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->nativeSetDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 676
    return-void
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2
    .parameter "displayToken"
    .parameter "surface"

    .prologue
    .line 649
    if-nez p0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_0
    invoke-static {p0, p1}, Landroid/view/Surface;->nativeSetDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 653
    return-void
.end method

.method public static unblankDisplay(Landroid/os/IBinder;)V
    .locals 2
    .parameter "displayToken"

    .prologue
    .line 699
    if-nez p0, :cond_0

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    invoke-static {p0}, Landroid/view/Surface;->nativeUnblankDisplay(Landroid/os/IBinder;)V

    .line 703
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/Surface;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 715
    if-nez p1, :cond_0

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    if-eq p1, p0, :cond_1

    .line 719
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeCopyFrom(Landroid/view/Surface;)V

    .line 721
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Landroid/view/Surface;->nativeDestroy()V

    .line 411
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 412
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 387
    :cond_0
    invoke-direct {p0}, Landroid/view/Surface;->nativeRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 391
    return-void

    .line 389
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGenerationId()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Landroid/view/Surface;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Landroid/view/Surface;->mWidth:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 596
    invoke-direct {p0, v0, v0}, Landroid/view/Surface;->nativeSetFlags(II)V

    .line 597
    return-void
.end method

.method public isConsumerRunningBehind()Z
    .locals 1

    .prologue
    .line 442
    invoke-direct {p0}, Landroid/view/Surface;->nativeIsConsumerRunningBehind()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Landroid/view/Surface;->nativeIsValid()Z

    move-result v0

    return v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 746
    if-nez p1, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 751
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeReadFromParcel(Landroid/os/Parcel;)V

    .line 752
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/view/Surface;->nativeRelease()V

    .line 400
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 401
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 611
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeSetAlpha(F)V

    .line 612
    return-void
.end method

.method setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .locals 2
    .parameter "translator"

    .prologue
    .line 488
    if-eqz p1, :cond_0

    .line 489
    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 490
    .local v0, appScale:F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 491
    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 492
    iput-object p1, p0, Landroid/view/Surface;->mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 494
    .end local v0           #appScale:F
    :cond_0
    return-void
.end method

.method public setFlags(II)V
    .locals 0
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->nativeSetFlags(II)V

    .line 622
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .parameter "zorder"

    .prologue
    .line 564
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeSetLayer(I)V

    .line 565
    return-void
.end method

.method public setLayerStack(I)V
    .locals 0
    .parameter "layerStack"

    .prologue
    .line 631
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeSetLayerStack(I)V

    .line 632
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 0
    .parameter "dsdx"
    .parameter "dtdx"
    .parameter "dsdy"
    .parameter "dtdy"

    .prologue
    .line 616
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Surface;->nativeSetMatrix(FFFF)V

    .line 617
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->nativeSetPosition(FF)V

    .line 575
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 569
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->nativeSetPosition(FF)V

    .line 570
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 579
    iput p1, p0, Landroid/view/Surface;->mWidth:I

    .line 580
    iput p2, p0, Landroid/view/Surface;->mHeight:I

    .line 581
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->nativeSetSize(II)V

    .line 582
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 606
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeSetTransparentRegionHint(Landroid/graphics/Region;)V

    .line 607
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "crop"

    .prologue
    .line 626
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeSetWindowCrop(Landroid/graphics/Rect;)V

    .line 627
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 601
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->nativeSetFlags(II)V

    .line 602
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", identity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/Surface;->nativeGetIdentity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferFrom(Landroid/view/Surface;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 732
    if-nez p1, :cond_0

    .line 733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_0
    if-eq p1, p0, :cond_1

    .line 736
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeTransferFrom(Landroid/view/Surface;)V

    .line 738
    :cond_1
    return-void
.end method

.method public unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 472
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 473
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 756
    if-nez p1, :cond_0

    .line 757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_0
    iget-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 761
    invoke-direct {p0, p1}, Landroid/view/Surface;->nativeWriteToParcel(Landroid/os/Parcel;)V

    .line 762
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 765
    :cond_1
    return-void
.end method
