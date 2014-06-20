.class public Lcom/vzw/location/VzwGpsDeviceStatus;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsDeviceStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final HW_STATE_IDLE:I = 0x2

.field public static final HW_STATE_ON:I = 0x1

.field public static final HW_STATE_UNKNOWN:I = 0x0

.field public static final VALID_ALM_SV_MASK:I = 0x4

.field public static final VALID_DEV_ERROR:I = 0x20

.field public static final VALID_EPH_SV_MASK:I = 0x2

.field public static final VALID_HW_STATE:I = 0x1

.field public static final VALID_SAT_IN_VIEW_CARRIER_TO_NOISE_RATIO:I = 0x10

.field public static final VALID_SAT_IN_VIEW_PRN:I = 0x8


# instance fields
.field private mHwState:I

.field private mSatelliteCount:I

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

.field private mValidFields:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v1, 0x40

    new-array v1, v1, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 62
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    new-instance v2, Lcom/vzw/location/VzwGpsSatelliteStatus;

    invoke-direct {v2}, Lcom/vzw/location/VzwGpsSatelliteStatus;-><init>()V

    aput-object v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x40

    new-array v0, v0, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 65
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->set(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/vzw/location/VzwGpsDeviceStatus;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    return-void
.end method

.method static synthetic access$1(Lcom/vzw/location/VzwGpsDeviceStatus;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    return-void
.end method

.method static synthetic access$2(Lcom/vzw/location/VzwGpsDeviceStatus;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    return-void
.end method

.method static synthetic access$3(Lcom/vzw/location/VzwGpsDeviceStatus;)[Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vzw/location/VzwGpsDeviceStatus;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getHwState()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    return v0
.end method

.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    return v0
.end method

.method public getValidFields()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    .line 82
    return-void
.end method

.method public satellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus$2;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwGpsDeviceStatus$2;-><init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    return-object v0
.end method

.method declared-synchronized set(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 3
    .parameter "other"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget v1, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    iput v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    .line 70
    iget v1, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    iput v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    .line 71
    iget v1, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    iput v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 75
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setStatus(Lcom/vzw/location/VzwGpsSatelliteStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setHwState(I)V
    .locals 1
    .parameter "hwState"

    .prologue
    .line 101
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    .line 102
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    .line 103
    return-void
.end method

.method public declared-synchronized setSatelliteStatus([I[IJJ)V
    .locals 10
    .parameter "svInViewPrns"
    .parameter "svInViewCnr"
    .parameter "ephSVMask"
    .parameter "almSVMask"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    array-length v6, p1

    array-length v7, p2

    if-ge v6, v7, :cond_0

    array-length v5, p1

    .line 115
    .local v5, toIterate:I
    :goto_0
    const/4 v6, 0x0

    iput v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    .line 117
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v5, :cond_1

    .line 131
    iget v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    or-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 111
    .end local v4           #i:I
    .end local v5           #toIterate:I
    :cond_0
    :try_start_1
    array-length v5, p2

    goto :goto_0

    .line 118
    .restart local v4       #i:I
    .restart local v5       #toIterate:I
    :cond_1
    const-wide/16 v6, 0x1

    shl-long v0, v6, v4

    .line 119
    .local v0, flag:J
    and-long v6, p3, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    const/4 v3, 0x1

    .line 120
    .local v3, hasEphemeris:Z
    :goto_2
    and-long v6, p5, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    const/4 v2, 0x1

    .line 122
    .local v2, hasAlmanac:Z
    :goto_3
    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    .line 123
    :cond_2
    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    aget v7, p1, v4

    iput v7, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 124
    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    aget v7, p2, v4

    int-to-float v7, v7

    iput v7, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 125
    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    iput-boolean v3, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 126
    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    iput-boolean v2, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 127
    iget v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 119
    .end local v2           #hasAlmanac:Z
    .end local v3           #hasEphemeris:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 120
    .restart local v3       #hasEphemeris:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 111
    .end local v0           #flag:J
    .end local v3           #hasEphemeris:Z
    .end local v4           #i:I
    .end local v5           #toIterate:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setStatus([I[FJJ)V
    .locals 10
    .parameter "svInViewPrns"
    .parameter "svInViewCnr"
    .parameter "ephSVMask"
    .parameter "almSVMask"

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    array-length v6, p1

    array-length v7, p2

    if-ge v6, v7, :cond_0

    array-length v5, p1

    .line 144
    .local v5, toIterate:I
    :goto_0
    const/4 v6, 0x0

    iput v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    .line 145
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v5, :cond_1

    .line 158
    iget v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    or-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 140
    .end local v4           #i:I
    .end local v5           #toIterate:I
    :cond_0
    :try_start_1
    array-length v5, p2

    goto :goto_0

    .line 146
    .restart local v4       #i:I
    .restart local v5       #toIterate:I
    :cond_1
    const-wide/16 v6, 0x1

    shl-long v0, v6, v4

    .line 147
    .local v0, flag:J
    and-long v6, p3, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    const/4 v3, 0x1

    .line 148
    .local v3, hasEphemeris:Z
    :goto_2
    and-long v6, p5, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    const/4 v2, 0x1

    .line 149
    .local v2, hasAlmanac:Z
    :goto_3
    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    .line 150
    :cond_2
    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    aget v7, p1, v4

    iput v7, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 151
    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    aget v7, p2, v4

    iput v7, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 152
    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    iput-boolean v3, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 153
    iget-object v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v7, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    aget-object v6, v6, v7

    iput-boolean v2, v6, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 154
    iget v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 147
    .end local v2           #hasAlmanac:Z
    .end local v3           #hasEphemeris:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 148
    .restart local v3       #hasEphemeris:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 140
    .end local v0           #flag:J
    .end local v3           #hasEphemeris:Z
    .end local v4           #i:I
    .end local v5           #toIterate:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, builder:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    .line 190
    const-string v2, "Hw state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    packed-switch v2, :pswitch_data_0

    .line 199
    const-string v2, "Unknown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    :goto_0
    iget v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    and-int/lit8 v2, v2, 0x1e

    if-lez v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsDeviceStatus;->satellites()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 193
    :pswitch_0
    const-string v2, "On"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 196
    :pswitch_1
    const-string v2, "Idle"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 204
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 205
    .local v1, satellite:Lcom/vzw/location/VzwGpsSatelliteStatus;
    const-string v3, " Satellite: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 218
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 222
    return-void
.end method
