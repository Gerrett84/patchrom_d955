.class public Lcom/vzw/location/VzwGpsStatus;
.super Ljava/lang/Object;
.source "VzwGpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsStatus$Listener;,
        Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_AGPS_AUTH_DNS_FAIL:I = 0x6

.field public static final GPS_EVENT_AGPS_AUTH_EXPIRED:I = 0x5

.field public static final GPS_EVENT_AGPS_AUTH_FAIL:I = 0x3

.field public static final GPS_EVENT_AGPS_AUTH_PASS:I = 0x2

.field public static final GPS_EVENT_AGPS_AUTH_PDE_NOT_REACHABLE:I = 0x4

.field public static final GPS_EVENT_DEVICE_STATUS:I = 0x19

.field public static final GPS_EVENT_ESTABLISH_PDE_CONNECTION_FAILED:I = 0x1

.field public static final GPS_EVENT_FIRST_FIX:I = 0xa

.field public static final GPS_EVENT_FIX_REQUESTED:I = 0xc

.field public static final GPS_EVENT_FIX_REQ_FAIL:I = 0xb

.field public static final GPS_EVENT_GENERAL_AGPS_FAILURE:I = 0xd

.field public static final GPS_EVENT_GENERAL_FAILURE:I = 0xe

.field public static final GPS_EVENT_INIT_CONFIG_NOT_PROVIDED:I = 0xf

.field public static final GPS_EVENT_INIT_FAIL:I = 0x7

.field public static final GPS_EVENT_INIT_IN_PROGRESS:I = 0x65

.field public static final GPS_EVENT_INIT_PASS:I = 0x8

.field public static final GPS_EVENT_LOCATION_AVAILABLE:I = 0x9

.field public static final GPS_EVENT_LOCATION_REQUEST_TIMEDOUT:I = 0x10

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x11

.field public static final GPS_EVENT_SECURITY_FAILED:I = 0x12

.field public static final GPS_EVENT_SET_FIX_MODE_FAIL:I = 0x13

.field public static final GPS_EVENT_SET_FIX_RATE_FAIL:I = 0x14

.field public static final GPS_EVENT_SET_GPS_PERFORMANCE_FAIL:I = 0x15

.field public static final GPS_EVENT_SET_PDE_FAIL:I = 0x16

.field public static final GPS_EVENT_SMS_REGISTER_FAILED:I = 0x1a

.field public static final GPS_EVENT_STARTED:I = 0x17

.field public static final GPS_EVENT_STOPPED:I = 0x18

.field public static final GPS_EVENT_TRACKING_SESSION_TIMEDOUT:I = 0x131

.field static final NUM_SATELLITES:I = 0xff


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field mSatellites:[Lcom/vzw/location/VzwGpsSatellite;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v1, 0xff

    new-array v1, v1, [Lcom/vzw/location/VzwGpsSatellite;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    .line 51
    new-instance v1, Lcom/vzw/location/VzwGpsStatus$1;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsStatus$1;-><init>(Lcom/vzw/location/VzwGpsStatus;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 115
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    new-instance v2, Lcom/vzw/location/VzwGpsSatellite;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwGpsSatellite;-><init>(I)V

    aput-object v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0xff

    return v0
.end method

.method public getSatellitesInView()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method declared-synchronized setStatus(II[I[I[F[F[F)V
    .locals 4
    .parameter "svCount"
    .parameter "svInViewCount"
    .parameter "prn"
    .parameter "prnInView"
    .parameter "elevInView"
    .parameter "azimInView"
    .parameter "snrInView"

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 129
    const/4 v0, 0x0

    :goto_1
    if-lt v0, p2, :cond_1

    .line 138
    const/4 v0, 0x0

    :goto_2
    if-lt v0, p1, :cond_2

    .line 142
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget v3, p4, v0

    aget-object v1, v2, v3

    .line 132
    .local v1, satellite:Lcom/vzw/location/VzwGpsSatellite;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 133
    aget v2, p7, v0

    iput v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    .line 134
    aget v2, p5, v0

    iput v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    .line 135
    aget v2, p6, v0

    iput v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    .line 136
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    .end local v1           #satellite:Lcom/vzw/location/VzwGpsSatellite;
    :cond_2
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget v3, p3, v0

    aget-object v1, v2, v3

    .line 140
    .restart local v1       #satellite:Lcom/vzw/location/VzwGpsSatellite;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 125
    .end local v1           #satellite:Lcom/vzw/location/VzwGpsSatellite;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized setStatus(II[I[I[I[I[I)V
    .locals 4
    .parameter "svCount"
    .parameter "svInViewCount"
    .parameter "prn"
    .parameter "prnInView"
    .parameter "elevInView"
    .parameter "azimInView"
    .parameter "snrInView"

    .prologue
    .line 155
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 159
    const/4 v0, 0x0

    :goto_1
    if-lt v0, p2, :cond_1

    .line 168
    const/4 v0, 0x0

    :goto_2
    if-lt v0, p1, :cond_2

    .line 172
    monitor-exit p0

    return-void

    .line 156
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget v3, p4, v0

    aget-object v1, v2, v3

    .line 162
    .local v1, satellite:Lcom/vzw/location/VzwGpsSatellite;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 163
    aget v2, p7, v0

    int-to-float v2, v2

    iput v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    .line 164
    aget v2, p5, v0

    int-to-float v2, v2

    iput v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    .line 165
    aget v2, p6, v0

    int-to-float v2, v2

    iput v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    .line 166
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    .end local v1           #satellite:Lcom/vzw/location/VzwGpsSatellite;
    :cond_2
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget v3, p3, v0

    aget-object v1, v2, v3

    .line 170
    .restart local v1       #satellite:Lcom/vzw/location/VzwGpsSatellite;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 155
    .end local v1           #satellite:Lcom/vzw/location/VzwGpsSatellite;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setStatus(Lcom/vzw/location/VzwGpsStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 184
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setStatus(Lcom/vzw/location/VzwGpsSatellite;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 209
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsSatellite;

    .line 210
    .local v1, satellite:Lcom/vzw/location/VzwGpsSatellite;
    const-string v3, "Satellite: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
