.class public Lcom/vzw/location/VzwGpsPerformance;
.super Ljava/lang/Object;
.source "VzwGpsPerformance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsPerformance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHorizontalAccuracy:J

.field private mPreferredResponseTime:J

.field private mVerticalAccuracy:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsPerformance$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsPerformance;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x5

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    .line 13
    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    .line 14
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/vzw/location/VzwGpsPerformance;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    return-void
.end method

.method static synthetic access$1(Lcom/vzw/location/VzwGpsPerformance;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    return-void
.end method

.method static synthetic access$2(Lcom/vzw/location/VzwGpsPerformance;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mHorizontalAccuracy ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mVerticalAccuracy ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mPreferredResponseTime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public getHorizontalAccuracy()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    return-wide v0
.end method

.method public getPreferredResponseTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    return-wide v0
.end method

.method public getVerticalAccuracy()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    return-wide v0
.end method

.method public setPerformance(JJJ)V
    .locals 3
    .parameter "verticalAccuracy"
    .parameter "horizontalAccuracy"
    .parameter "preferredResponseTime"

    .prologue
    const-wide/16 v1, 0x0

    .line 24
    cmp-long v0, p3, v1

    if-gez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "horizontalAccuracy="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    cmp-long v0, p1, v1

    if-gez v0, :cond_1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verticalAccuracy="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    cmp-long v0, p5, v1

    if-gez v0, :cond_2

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "preferredResponseTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_2
    iput-wide p3, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    .line 34
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    .line 35
    iput-wide p5, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHorizontalAccuracy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVerticalAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreferredResponseTime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorizontalAccuracy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mVerticalAccuracy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mPreferredResponseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    return-void
.end method
