.class public Lcom/lge/camera/util/SaveRequest;
.super Ljava/lang/Object;
.source "SaveRequest.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public data:[B

.field public dateTaken:J

.field public degree:I

.field public exifData:[B

.field public isSetLastThumb:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/lge/camera/util/SaveRequest;->exifData:[B

    .line 7
    iput-object v0, p0, Lcom/lge/camera/util/SaveRequest;->data:[B

    .line 8
    iput-object v0, p0, Lcom/lge/camera/util/SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 10
    iput v1, p0, Lcom/lge/camera/util/SaveRequest;->degree:I

    .line 11
    iput-boolean v1, p0, Lcom/lge/camera/util/SaveRequest;->isSetLastThumb:Z

    return-void
.end method
