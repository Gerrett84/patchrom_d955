.class final Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$HandsfreeFilter;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$SearchFilter;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;
    }
.end annotation


# static fields
.field static final ALL_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

.field static final BONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final FILTERS:[Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

.field static final UNBONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-direct {v0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 47
    new-instance v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 50
    new-instance v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$SearchFilter;

    invoke-direct {v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$SearchFilter;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$HandsfreeFilter;

    invoke-direct {v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$HandsfreeFilter;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sput-object p1, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic access$1000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getFilter(I)Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 3
    .parameter "filterType"

    .prologue
    .line 88
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v0, v0, p0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const-string v0, "BluetoothDeviceFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filter type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device picker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    goto :goto_0
.end method
