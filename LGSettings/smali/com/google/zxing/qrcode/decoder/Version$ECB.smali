.class public final Lcom/google/zxing/qrcode/decoder/Version$ECB;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECB"
.end annotation


# instance fields
.field private final count:I

.field private final dataCodewords:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "count"
    .parameter "dataCodewords"

    .prologue
    .line 223
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    .line 225
    iput p2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    .line 226
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    return v0
.end method

.method public getDataCodewords()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    return v0
.end method
