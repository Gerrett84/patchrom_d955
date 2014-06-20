.class public Lcom/lge/camera/listeners/LocationListener;
.super Ljava/lang/Object;
.source "LocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;Ljava/lang/String;)V
    .locals 2
    .parameter "function"
    .parameter "provider"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/LocationListener;->mValid:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

    .line 23
    iput-object p1, p0, Lcom/lge/camera/listeners/LocationListener;->mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

    .line 24
    iput-object p2, p0, Lcom/lge/camera/listeners/LocationListener;->mProvider:Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/lge/camera/listeners/LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mLastLocation:Landroid/location/Location;

    .line 26
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lge/camera/listeners/LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "newLocation"

    .prologue
    .line 30
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 32
    .local v0, Location:Ljava/lang/Double;
    iget-object v2, p0, Lcom/lge/camera/listeners/LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v2, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 33
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/listeners/LocationListener;->mValid:Z

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/listeners/LocationListener;->mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/listeners/LocationListener;->mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;->checkGPSSettingValue()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationListener onLocationChanged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/listeners/LocationListener;->mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/lge/camera/listeners/LocationListener;->mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

    iget-object v3, p0, Lcom/lge/camera/listeners/LocationListener;->mProvider:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;->updateGpsIndicator(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/LocationListener;->mValid:Z

    .line 62
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 58
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;->checkGPSSettingValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/LocationListener;->mValid:Z

    .line 74
    iget-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lge/camera/listeners/LocationListener;->mGet:Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;

    iget-object v1, p0, Lcom/lge/camera/listeners/LocationListener;->mProvider:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;->updateGpsIndicator(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
