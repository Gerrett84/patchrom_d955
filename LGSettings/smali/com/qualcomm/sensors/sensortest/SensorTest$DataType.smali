.class public final enum Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;
.super Ljava/lang/Enum;
.source "SensorTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/sensors/sensortest/SensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

.field public static final enum PRIMARY:Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

.field public static final enum SECONDARY:Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    new-instance v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    const-string v1, "PRIMARY"

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->PRIMARY:Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    new-instance v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    const-string v1, "SECONDARY"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->SECONDARY:Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    sget-object v1, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->PRIMARY:Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->SECONDARY:Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->$VALUES:[Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;
    .locals 1
    .parameter

    .prologue
    .line 150
    const-class v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->$VALUES:[Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    invoke-virtual {v0}, [Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/sensors/sensortest/SensorTest$DataType;

    return-object v0
.end method
