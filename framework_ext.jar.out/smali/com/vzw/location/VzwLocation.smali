.class public Lcom/vzw/location/VzwLocation;
.super Landroid/location/Location;
.source "VzwLocation.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_VALID_ALTITUDE_WRT_ELLIPSOID:I = 0x80

.field public static final GPS_VALID_ALTITUDE_WRT_SEA_LEVEL:I = 0x40

.field public static final GPS_VALID_FIX_ERROR:I = 0x100000

.field public static final GPS_VALID_FIX_MODE:I = 0x80000

.field public static final GPS_VALID_HEADING:I = 0x10

.field public static final GPS_VALID_HORIZONTAL_DILUTION_OF_PRECISION:I = 0x200

.field public static final GPS_VALID_LATITUDE:I = 0x2

.field public static final GPS_VALID_LONGITUDE:I = 0x4

.field public static final GPS_VALID_MAGNETIC_VARIATION:I = 0x20

.field public static final GPS_VALID_POSITION_DILUTION_OF_PRECISION:I = 0x100

.field public static final GPS_VALID_POSITION_UNCERTAINTY_ERROR:I = 0x40000

.field public static final GPS_VALID_SATELLITES_IN_VIEW:I = 0x2000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x10000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x8000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_PRNS:I = 0x4000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x20000

.field public static final GPS_VALID_SATELLITES_USED_PRNS:I = 0x1000

.field public static final GPS_VALID_SATELLITE_COUNT:I = 0x800

.field public static final GPS_VALID_SPEED:I = 0x8

.field public static final GPS_VALID_UTC_TIME:I = 0x1

.field public static final GPS_VALID_VERTICAL_DILUTION_OF_PRECISION:I = 0x400


# instance fields
.field private mAltWrtEllipsoid:F

.field private mAltWrtSeaLevel:F

.field private mFixMode:I

.field private mHDOP:F

.field private mHorConf:F

.field private mMagVar:F

.field private mMajorAxis:F

.field private mMajorAxisAngle:F

.field private mMinorAxis:F

.field private mPDOP:F

.field private mVDOP:F

.field private mValidFields:I

.field private mVerticalError:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lcom/vzw/location/VzwLocation$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwLocation$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method private constructor <init>(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 38
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHDOP:F

    .line 39
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mPDOP:F

    .line 40
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVDOP:F

    .line 41
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 42
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 43
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 44
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 45
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 46
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 47
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 49
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMagVar:F

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Landroid/location/Location;Lcom/vzw/location/VzwLocation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocation;-><init>(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwLocation;)V
    .locals 2
    .parameter "location"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 38
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHDOP:F

    .line 39
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mPDOP:F

    .line 40
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVDOP:F

    .line 41
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 42
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 43
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 44
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 45
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 46
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 47
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 49
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMagVar:F

    .line 65
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation;->set(Lcom/vzw/location/VzwLocation;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 38
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHDOP:F

    .line 39
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mPDOP:F

    .line 40
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVDOP:F

    .line 41
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 42
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 43
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 44
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 45
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 46
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 47
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 49
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMagVar:F

    .line 57
    return-void
.end method

.method static synthetic access$1(Lcom/vzw/location/VzwLocation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return-void
.end method

.method static synthetic access$10(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    return-void
.end method

.method static synthetic access$11(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    return-void
.end method

.method static synthetic access$12(Lcom/vzw/location/VzwLocation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    return-void
.end method

.method static synthetic access$13(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMagVar:F

    return-void
.end method

.method static synthetic access$2(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHDOP:F

    return-void
.end method

.method static synthetic access$3(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mPDOP:F

    return-void
.end method

.method static synthetic access$4(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVDOP:F

    return-void
.end method

.method static synthetic access$5(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    return-void
.end method

.method static synthetic access$6(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    return-void
.end method

.method static synthetic access$7(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    return-void
.end method

.method static synthetic access$8(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    return-void
.end method

.method static synthetic access$9(Lcom/vzw/location/VzwLocation;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 354
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 360
    :goto_0
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 366
    :goto_1
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Longitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 372
    :goto_2
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 378
    :goto_3
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Bearing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocation;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 384
    :goto_4
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Magnetic Variation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMagVar:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 390
    :goto_5
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Altitude (Sea Level): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 396
    :goto_6
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Altitude (Ellipsoid): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 402
    :goto_7
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "PDOP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mPDOP:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 408
    :goto_8
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "HDOP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHDOP:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 414
    :goto_9
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "VDOP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVDOP:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 420
    :goto_a
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Uncertainty: HC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Maj: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    const-string v1, ", MajAng: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " VE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 427
    :goto_b
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Fix Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 432
    :goto_c
    return-void

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Time: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Latitude: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 369
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Longitude: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 375
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Speed: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 381
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Bearing: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 387
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Magnetic Variation: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 393
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Altitude (Sea Level): ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 399
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Altitude (Ellipsoid): ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 405
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "PDOP: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 411
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "HDOP: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 417
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "VDOP: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 424
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Uncertainty: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 430
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Fix Mode: ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public getAltitudeWrtEllipsoid()F
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 188
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 190
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc0

    goto :goto_0
.end method

.method public getAltitudeWrtSeaLevel()F
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 170
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 172
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc0

    goto :goto_0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    return v0
.end method

.method public getHorizontalConfidence()F
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 274
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 275
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHorizontalDilutionOfPrecision()F
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 230
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHDOP:F

    .line 232
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc0

    goto :goto_0
.end method

.method public getMagneticVariation()F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagVar:F

    return v0
.end method

.method public getMajorAxis()F
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    return v0
.end method

.method public getMajorAxisAngle()F
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    return v0
.end method

.method public getMinorAxis()F
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    return v0
.end method

.method public getPositionDilutionOfPrecision()F
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 209
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPDOP:F

    .line 211
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc0

    goto :goto_0
.end method

.method public getValidFields()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return v0
.end method

.method public getVerticalDilutionOfPrecision()F
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    .line 251
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVDOP:F

    .line 253
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc0

    goto :goto_0
.end method

.method public getVerticalError()F
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    return v0
.end method

.method public hasBearing()Z
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeed()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAccuracy()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/location/Location;->reset()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 97
    return-void
.end method

.method public set(Lcom/vzw/location/VzwLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 75
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mValidFields:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 76
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mHDOP:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHDOP:F

    .line 77
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mPDOP:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPDOP:F

    .line 78
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mVDOP:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVDOP:F

    .line 79
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 80
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 81
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mHorConf:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 82
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 83
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 84
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 85
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 86
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 87
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMagVar:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVar:F

    .line 88
    return-void
.end method

.method public setAltitudeWrtEllipsoid(F)V
    .locals 1
    .parameter "altitudeWrtEllipsoid"

    .prologue
    .line 194
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 195
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 196
    return-void
.end method

.method public setAltitudeWrtSeaLevel(F)V
    .locals 1
    .parameter "altitudeWrtSeaLevel"

    .prologue
    .line 176
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 177
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 178
    return-void
.end method

.method public setBearing(F)V
    .locals 1
    .parameter "bearing"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/location/Location;->setBearing(F)V

    .line 147
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 148
    return-void
.end method

.method public setFixMode(I)V
    .locals 2
    .parameter "fixMode"

    .prologue
    .line 348
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 349
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 350
    return-void
.end method

.method public setHorizontalDilutionOfPrecision(F)V
    .locals 1
    .parameter "horizontalDilutionOfPrecision"

    .prologue
    .line 236
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHDOP:F

    .line 237
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 238
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .parameter "latitude"

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 124
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 125
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .parameter "longitude"

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 130
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 131
    return-void
.end method

.method public setMagneticVariation(F)V
    .locals 1
    .parameter "magneticVariation"

    .prologue
    .line 160
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMagVar:F

    .line 161
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 162
    return-void
.end method

.method public setPositionDilutionOfPrecision(F)V
    .locals 1
    .parameter "positionDilutionOfPrecision"

    .prologue
    .line 215
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mPDOP:F

    .line 216
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 217
    return-void
.end method

.method public setPositionError(FFFFF)V
    .locals 2
    .parameter "horConf"
    .parameter "majorAxis"
    .parameter "majorAxisAngle"
    .parameter "minorAxis"
    .parameter "verticalError"

    .prologue
    .line 334
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 335
    iput p2, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 336
    iput p3, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 337
    iput p4, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 338
    iput p5, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 340
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 341
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/location/Location;->setSpeed(F)V

    .line 136
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 137
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    .line 118
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 119
    return-void
.end method

.method public setVerticalDilutionOfPrecision(F)V
    .locals 1
    .parameter "verticalDilutionOfPrecision"

    .prologue
    .line 257
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVDOP:F

    .line 258
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 259
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v1, stringBuffer:Ljava/lang/StringBuilder;
    new-instance v0, Landroid/util/StringBuilderPrinter;

    invoke-direct {v0, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 438
    .local v0, printer:Landroid/util/StringBuilderPrinter;
    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcom/vzw/location/VzwLocation;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 449
    invoke-super {p0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 450
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHDOP:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 452
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPDOP:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 453
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVDOP:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 454
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 455
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 456
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 457
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 458
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 459
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 460
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 461
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagVar:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 463
    return-void
.end method
