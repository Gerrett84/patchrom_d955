.class public Litectokyo/wiflus/service/bean/TransferInfoBean;
.super Ljava/lang/Object;
.source "TransferInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Litectokyo/wiflus/service/bean/TransferInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:I

.field private contentId:I

.field private contiguous_ratio:J

.field private date:J

.field private destDuid:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private reason:I

.field private referenceId:I

.field private renamedFilePath:Ljava/lang/String;

.field private state:I

.field private totalSize:J

.field private transferedSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 324
    new-instance v0, Litectokyo/wiflus/service/bean/TransferInfoBean$1;

    invoke-direct {v0}, Litectokyo/wiflus/service/bean/TransferInfoBean$1;-><init>()V

    sput-object v0, Litectokyo/wiflus/service/bean/TransferInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 280
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 281
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/bean/TransferInfoBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 282
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->groupId:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->key:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->appId:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->destDuid:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->filePath:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->renamedFilePath:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->contentId:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->totalSize:J

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->contiguous_ratio:J

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->transferedSize:J

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->state:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->reason:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->date:J

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->referenceId:I

    .line 322
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 291
    iget-object v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->appId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->destDuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->renamedFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->contentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-wide v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->totalSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget-wide v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->contiguous_ratio:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    iget-wide v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->transferedSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    iget v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-wide v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 304
    iget v0, p0, Litectokyo/wiflus/service/bean/TransferInfoBean;->referenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    return-void
.end method
