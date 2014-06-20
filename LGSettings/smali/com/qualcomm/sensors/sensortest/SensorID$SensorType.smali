.class public final enum Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;
.super Ljava/lang/Enum;
.source "SensorID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/sensors/sensortest/SensorID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

.field public static final enum ACCEL:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

.field public static final enum GYRO:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

.field public static final enum MAG:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

.field public static final enum PRESSURE:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

.field public static final enum PROX_LIGHT:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;


# instance fields
.field private final typeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    const-string v1, "ACCEL"

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->ACCEL:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    .line 46
    new-instance v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    const-string v1, "GYRO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->GYRO:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    .line 47
    new-instance v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    const-string v1, "MAG"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v5, v2}, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->MAG:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    .line 48
    new-instance v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    const-string v1, "PRESSURE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v6, v2}, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->PRESSURE:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    .line 49
    new-instance v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    const-string v1, "PROX_LIGHT"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v7, v2}, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->PROX_LIGHT:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    sget-object v1, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->ACCEL:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->GYRO:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->MAG:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->PRESSURE:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->PROX_LIGHT:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->$VALUES:[Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "typeValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->typeValue:I

    .line 55
    return-void
.end method

.method public static getSensorType(Landroid/hardware/Sensor;)Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;
    .locals 1
    .parameter "sensor"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 74
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 63
    :pswitch_1
    sget-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->ACCEL:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    goto :goto_0

    .line 65
    :pswitch_2
    sget-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->GYRO:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    goto :goto_0

    .line 67
    :pswitch_3
    sget-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->MAG:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    goto :goto_0

    .line 69
    :pswitch_4
    sget-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->PRESSURE:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    goto :goto_0

    .line 72
    :pswitch_5
    sget-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->PROX_LIGHT:Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;
    .locals 1
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->$VALUES:[Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    invoke-virtual {v0}, [Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;

    return-object v0
.end method


# virtual methods
.method public typeValue()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/qualcomm/sensors/sensortest/SensorID$SensorType;->typeValue:I

    return v0
.end method
