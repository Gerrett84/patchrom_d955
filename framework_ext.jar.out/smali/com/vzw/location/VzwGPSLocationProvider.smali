.class public Lcom/vzw/location/VzwGPSLocationProvider;
.super Landroid/location/LocationProvider;
.source "VzwGPSLocationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwGPSLocationProvider"


# instance fields
.field mAccuracy:I

.field mHasMonetaryCost:Z

.field mName:Ljava/lang/String;

.field mPowerRequirement:I

.field mRequiresCell:Z

.field mRequiresNetwork:Z

.field mRequiresSatellite:Z

.field mSupportsAltitude:Z

.field mSupportsBearing:Z

.field mSupportsSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mAccuracy:I

    return v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mPowerRequirement:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mHasMonetaryCost:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 1
    .parameter "criteria"

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mRequiresSatellite:Z

    return v0
.end method

.method public setAccuracy(I)V
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 58
    iput p1, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mAccuracy:I

    .line 59
    return-void
.end method

.method public setHasMonetaryCost(Z)V
    .locals 0
    .parameter "hasMonetaryCost"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mHasMonetaryCost:Z

    .line 39
    return-void
.end method

.method public setPowerRequirement(I)V
    .locals 0
    .parameter "powerRequirement"

    .prologue
    .line 54
    iput p1, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mPowerRequirement:I

    .line 55
    return-void
.end method

.method public setRequiresCell(Z)V
    .locals 0
    .parameter "requiresCell"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mRequiresCell:Z

    .line 35
    return-void
.end method

.method public setRequiresNetwork(Z)V
    .locals 0
    .parameter "requiresNetwork"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mRequiresNetwork:Z

    .line 27
    return-void
.end method

.method public setRequiresSatellite(Z)V
    .locals 0
    .parameter "requiresSatellite"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mRequiresSatellite:Z

    .line 31
    return-void
.end method

.method public setSupportsAltitude(Z)V
    .locals 0
    .parameter "supportsAltitude"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mSupportsAltitude:Z

    .line 43
    return-void
.end method

.method public setSupportsBearing(Z)V
    .locals 0
    .parameter "supportsBearing"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mSupportsBearing:Z

    .line 51
    return-void
.end method

.method public setSupportsSpeed(Z)V
    .locals 0
    .parameter "supportsSpeed"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mSupportsSpeed:Z

    .line 47
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/vzw/location/VzwGPSLocationProvider;->mSupportsSpeed:Z

    return v0
.end method
