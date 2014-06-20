.class Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;
.super Ljava/lang/Object;
.source "DrmFwExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdrm/DrmFwExt$MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AVTypeList"
.end annotation


# instance fields
.field extension:Ljava/lang/String;

.field fileType:I

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "extension"

    .prologue
    .line 284
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p1, p0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;->fileType:I

    .line 286
    iput-object p2, p0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;->mimeType:Ljava/lang/String;

    .line 287
    iput-object p3, p0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$AVTypeList;->extension:Ljava/lang/String;

    .line 288
    return-void
.end method
