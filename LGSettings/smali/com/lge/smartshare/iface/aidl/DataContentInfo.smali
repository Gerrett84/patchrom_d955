.class public Lcom/lge/smartshare/iface/aidl/DataContentInfo;
.super Ljava/lang/Object;
.source "DataContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/smartshare/iface/aidl/DataContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORT_CONTENT_URI:[Ljava/lang/String;


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public date:J

.field public duration:I

.field public extension:Ljava/lang/String;

.field public height:I

.field public isLocal:Z

.field public isThumbnailPlay:I

.field public mime:Ljava/lang/String;

.field public size:I

.field public thumbnailUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public uri:Ljava/lang/String;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    const-string v2, "content://media/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 19
    const-string v2, "content://com.lge.smartshare.provider/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    const-string v2, "content://com.lge.cloudprovider/"

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->SUPPORT_CONTENT_URI:[Ljava/lang/String;

    .line 337
    new-instance v0, Lcom/lge/smartshare/iface/aidl/DataContentInfo$1;

    invoke-direct {v0}, Lcom/lge/smartshare/iface/aidl/DataContentInfo$1;-><init>()V

    sput-object v0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 345
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->isLocal:Z

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->uri:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->type:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->title:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->artist:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->album:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->extension:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->mime:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->date:J

    .line 43
    iput v2, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->size:I

    .line 44
    iput v2, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->height:I

    .line 45
    iput v2, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->width:I

    .line 46
    iput v2, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->duration:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->thumbnailUrl:Ljava/lang/String;

    .line 50
    iput v2, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->isThumbnailPlay:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->isLocal:Z

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->uri:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->type:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->title:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->artist:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->album:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->extension:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->mime:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->date:J

    .line 43
    iput v2, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->size:I

    .line 44
    iput v2, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->height:I

    .line 45
    iput v2, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->width:I

    .line 46
    iput v2, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->duration:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->thumbnailUrl:Ljava/lang/String;

    .line 50
    iput v2, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->isThumbnailPlay:I

    .line 286
    invoke-direct {p0, p1}, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 287
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->isLocal:Z

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->type:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->uri:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->title:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->artist:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->album:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->extension:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->mime:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->date:J

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->size:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->height:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->width:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->duration:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->thumbnailUrl:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->isThumbnailPlay:I

    .line 335
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->isLocal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->extension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->mime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-wide v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 305
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget v0, p0, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->isThumbnailPlay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
