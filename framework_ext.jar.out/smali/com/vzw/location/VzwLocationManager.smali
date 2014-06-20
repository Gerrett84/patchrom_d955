.class public final Lcom/vzw/location/VzwLocationManager;
.super Ljava/lang/Object;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwLocationManager$ListenerTransport;,
        Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
    }
.end annotation


# static fields
.field public static final LOCAL_LOGD:Z = false

.field public static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "VzwLocationManager"

.field public static final VZW_LBS_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field private final mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

.field private final mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vzw/location/VzwGpsStatus$Listener;",
            "Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Lcom/vzw/location/VzwLocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCriteria:Lcom/vzw/location/VzwCriteria;

.field private mService:Lcom/vzw/location/IVzwLocationManager;


# direct methods
.method public constructor <init>(Lcom/vzw/location/IVzwLocationManager;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/vzw/location/VzwGpsStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsStatus;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    .line 36
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mPrevCriteria:Lcom/vzw/location/VzwCriteria;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mLocationListeners:Ljava/util/HashMap;

    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "service = null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    .line 215
    return-void
.end method

.method private _requestLocationUpdates(Ljava/lang/String;ZLcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .parameter "provider"
    .parameter "isSingleFix"
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 605
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mLocationListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .line 607
    .local v1, transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    if-nez v1, :cond_0

    .line 609
    if-nez p5, :cond_1

    .line 610
    new-instance v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p4, v2}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 614
    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    if-nez p3, :cond_3

    .line 617
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mPrevCriteria:Lcom/vzw/location/VzwCriteria;

    if-nez v2, :cond_2

    .line 618
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No previous criteria found"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 605
    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string/jumbo v3, "requestLocationUpdates: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 612
    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_1
    :try_start_3
    new-instance v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    invoke-direct {v1, p0, p4, p5}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    goto :goto_0

    .line 620
    :cond_2
    new-instance v2, Lcom/vzw/location/VzwCriteria;

    invoke-direct {v2}, Lcom/vzw/location/VzwCriteria;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mPrevCriteria:Lcom/vzw/location/VzwCriteria;

    .line 629
    :goto_2
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManager;->mPrevCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-interface {v2, p1, p2, v4, v1}, Lcom/vzw/location/IVzwLocationManager;->requestLocationUpdates(Ljava/lang/String;ZLcom/vzw/location/VzwCriteria;Lcom/vzw/location/ILocationListener;)V

    .line 605
    monitor-exit v3

    goto :goto_1

    .line 621
    :cond_3
    instance-of v2, p3, Lcom/vzw/location/VzwCriteria;

    if-eqz v2, :cond_4

    .line 622
    iput-object p3, p0, Lcom/vzw/location/VzwLocationManager;->mPrevCriteria:Lcom/vzw/location/VzwCriteria;

    goto :goto_2

    .line 624
    :cond_4
    new-instance v2, Lcom/vzw/location/VzwCriteria;

    invoke-direct {v2, p3}, Lcom/vzw/location/VzwCriteria;-><init>(Landroid/location/Criteria;)V

    iput-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mPrevCriteria:Lcom/vzw/location/VzwCriteria;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    return-object v0
.end method

.method private createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    .locals 4
    .parameter "name"
    .parameter "info"

    .prologue
    .line 254
    const-string v1, "VzwLocationManager"

    const-string v2, "+ createProvider starting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Lcom/vzw/location/VzwGPSLocationProvider;

    invoke-direct {v0, p1}, Lcom/vzw/location/VzwGPSLocationProvider;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, provider:Lcom/vzw/location/VzwGPSLocationProvider;
    const-string/jumbo v1, "network"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGPSLocationProvider;->setRequiresNetwork(Z)V

    .line 257
    const-string/jumbo v1, "satellite"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGPSLocationProvider;->setRequiresSatellite(Z)V

    .line 258
    const-string v1, "cell"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGPSLocationProvider;->setRequiresCell(Z)V

    .line 259
    const-string v1, "cost"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGPSLocationProvider;->setHasMonetaryCost(Z)V

    .line 260
    const-string v1, "altitude"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGPSLocationProvider;->setSupportsAltitude(Z)V

    .line 261
    const-string/jumbo v1, "speed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGPSLocationProvider;->setSupportsSpeed(Z)V

    .line 262
    const-string v1, "bearing"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGPSLocationProvider;->setSupportsBearing(Z)V

    .line 263
    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGPSLocationProvider;->setPowerRequirement(I)V

    .line 264
    const-string v1, "accuracy"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGPSLocationProvider;->setAccuracy(I)V

    .line 265
    const-string v1, "VzwLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-VzwLocationProvider complete: provider = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-object v0
.end method


# virtual methods
.method public addVzwGpsStatusListener(Lcom/vzw/location/VzwGpsStatus$Listener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    .line 702
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 706
    const/4 v1, 0x1

    .line 722
    :cond_0
    :goto_0
    return v1

    .line 709
    :cond_1
    :try_start_0
    new-instance v2, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;)V

    .line 710
    .local v2, transport:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, v2}, Lcom/vzw/location/IVzwLocationManager;->addGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z

    move-result v1

    .line 711
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 712
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    .end local v1           #result:Z
    .end local v2           #transport:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 715
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VzwLocationManager"

    const-string v4, "RemoteException in registerGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    :goto_0
    return-object v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "getAllProviders: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Z)Ljava/lang/String;
    .locals 2
    .parameter "enabledOnly"

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 338
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 340
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 314
    if-nez p1, :cond_0

    .line 315
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "name==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, p1}, Lcom/vzw/location/IVzwLocationManager;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 319
    .local v1, info:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 326
    .end local v1           #info:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 322
    .restart local v1       #info:Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/vzw/location/VzwLocationManager;->createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 323
    .end local v1           #info:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 324
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "VzwLocationManager"

    const-string v4, "getProvider: RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 3
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationManager;->getProviders(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 299
    :goto_0
    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "getProviders: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVzwGpsDeviceStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 1
    .parameter "status"

    .prologue
    .line 778
    if-nez p1, :cond_0

    .line 779
    new-instance p1, Lcom/vzw/location/VzwGpsDeviceStatus;

    .end local p1
    invoke-direct {p1}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    .line 781
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsDeviceStatus;->set(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    .line 782
    return-object p1
.end method

.method public getVzwGpsStatus(Lcom/vzw/location/VzwGpsStatus;)Lcom/vzw/location/VzwGpsStatus;
    .locals 1
    .parameter "status"

    .prologue
    .line 759
    if-nez p1, :cond_0

    .line 760
    new-instance p1, Lcom/vzw/location/VzwGpsStatus;

    .end local p1
    invoke-direct {p1}, Lcom/vzw/location/VzwGpsStatus;-><init>()V

    .line 762
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsStatus;->setStatus(Lcom/vzw/location/VzwGpsStatus;)V

    .line 763
    return-object p1
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    .line 676
    if-nez p1, :cond_0

    .line 677
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 684
    :goto_0
    return v1

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string/jumbo v2, "isProviderEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 649
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .line 654
    .local v1, transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    if-eqz v1, :cond_1

    .line 655
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, v1}, Lcom/vzw/location/IVzwLocationManager;->removeUpdates(Lcom/vzw/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_1
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string/jumbo v3, "removeUpdates: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/VzwGpsStatus$Listener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 736
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    .line 737
    .local v1, transport:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 738
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, v1}, Lcom/vzw/location/IVzwLocationManager;->removeGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 6
    .parameter "provider"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 391
    if-nez p1, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    if-nez p2, :cond_1

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 398
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 6
    .parameter "provider"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    if-nez p2, :cond_1

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 486
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;)V
    .locals 6
    .parameter "provider"
    .parameter "criteria"
    .parameter "listener"

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    if-nez p2, :cond_1

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listcriteriaener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    if-nez p3, :cond_2

    .line 426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 429
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 6
    .parameter "provider"
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    if-nez p2, :cond_1

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listcriteriaener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1
    if-nez p3, :cond_2

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_2
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 460
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 6
    .parameter "provider"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 505
    if-nez p1, :cond_0

    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    if-nez p2, :cond_1

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_1
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 512
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 6
    .parameter "provider"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    if-nez p2, :cond_1

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 570
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;)V
    .locals 6
    .parameter "provider"
    .parameter "criteria"
    .parameter "listener"

    .prologue
    .line 533
    if-nez p1, :cond_0

    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    if-nez p2, :cond_1

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "criteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_1
    if-nez p3, :cond_2

    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_2
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 543
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 6
    .parameter "provider"
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_0
    if-nez p2, :cond_1

    .line 595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "criteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_1
    if-nez p3, :cond_2

    .line 598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_2
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 601
    return-void
.end method

.method public setVzwGpsConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)Z
    .locals 3
    .parameter "provider"
    .parameter "params"

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_0
    if-nez p2, :cond_1

    .line 356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "params==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/vzw/location/IVzwLocationManager;->setConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    const/4 v1, 0x1

    .line 371
    :goto_0
    return v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string/jumbo v2, "removeUpdates: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    const/4 v1, 0x0

    goto :goto_0
.end method
