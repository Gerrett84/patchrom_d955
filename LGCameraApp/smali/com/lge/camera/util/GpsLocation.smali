.class public Lcom/lge/camera/util/GpsLocation;
.super Ljava/lang/Object;
.source "GpsLocation.java"


# instance fields
.field private mGpsAvailable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "gpsAvailable"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 11
    iput-boolean p1, p0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 12
    return-void
.end method


# virtual methods
.method public getGpsAvailable()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    return v0
.end method

.method public setGPSlocation(Landroid/hardware/Camera$Parameters;ZLandroid/location/Location;)Z
    .locals 17
    .parameter "parameter"
    .parameter "recordLocation"
    .parameter "currentLocation"

    .prologue
    .line 23
    const/4 v5, 0x0

    .line 26
    .local v5, bChangeParameter:Z
    if-eqz p2, :cond_4

    move-object/from16 v8, p3

    .line 27
    .local v8, loc:Landroid/location/Location;
    :goto_0
    if-eqz v8, :cond_8

    .line 28
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 29
    .local v7, latitude:Ljava/lang/Double;
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 30
    .local v9, longitude:Ljava/lang/Double;
    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 32
    .local v10, pivot:Ljava/lang/Double;
    invoke-virtual {v7, v10}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v9, v10}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v13

    if-eqz v13, :cond_5

    :cond_0
    const/4 v6, 0x1

    .line 34
    .local v6, hasLatLon:Z
    :goto_1
    if-eqz v6, :cond_7

    .line 44
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 46
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 47
    invoke-virtual {v8}, Landroid/location/Location;->hasAltitude()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 48
    invoke-virtual {v8}, Landroid/location/Location;->getAltitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 49
    .local v1, altitude:Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-wide v15, 0x408f400000000000L

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 50
    .local v4, altitudeX1000:Ljava/lang/Double;
    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    .line 51
    .local v2, altitudeDividend:J
    const-wide/16 v13, 0x0

    cmp-long v13, v2, v13

    if-gez v13, :cond_1

    .line 52
    const-wide/16 v13, -0x1

    mul-long/2addr v2, v13

    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 67
    .end local v1           #altitude:Ljava/lang/Double;
    .end local v2           #altitudeDividend:J
    .end local v4           #altitudeX1000:Ljava/lang/Double;
    :goto_2
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_2

    .line 70
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long v11, v13, v15

    .line 71
    .local v11, utcTimeSeconds:J
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 74
    .end local v11           #utcTimeSeconds:J
    :cond_2
    const/4 v5, 0x1

    .line 75
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 92
    .end local v6           #hasLatLon:Z
    .end local v7           #latitude:Ljava/lang/Double;
    .end local v9           #longitude:Ljava/lang/Double;
    .end local v10           #pivot:Ljava/lang/Double;
    :cond_3
    :goto_3
    const-string v13, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loc = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v5

    .line 26
    .end local v8           #loc:Landroid/location/Location;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 32
    .restart local v7       #latitude:Ljava/lang/Double;
    .restart local v8       #loc:Landroid/location/Location;
    .restart local v9       #longitude:Ljava/lang/Double;
    .restart local v10       #pivot:Ljava/lang/Double;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 63
    .restart local v6       #hasLatLon:Z
    :cond_6
    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_2

    .line 77
    :cond_7
    const/4 v8, 0x0

    .line 78
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    if-eqz v13, :cond_3

    .line 79
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 80
    const/4 v5, 0x1

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto :goto_3

    .line 85
    .end local v6           #hasLatLon:Z
    .end local v7           #latitude:Ljava/lang/Double;
    .end local v9           #longitude:Ljava/lang/Double;
    .end local v10           #pivot:Ljava/lang/Double;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    if-eqz v13, :cond_3

    .line 86
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 87
    const/4 v5, 0x1

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto :goto_3
.end method

.method public setGpsAvailable(Z)V
    .locals 0
    .parameter "gpsAvailable"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 20
    return-void
.end method
