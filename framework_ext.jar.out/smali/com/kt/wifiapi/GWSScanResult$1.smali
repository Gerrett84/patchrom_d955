.class final Lcom/kt/wifiapi/GWSScanResult$1;
.super Ljava/lang/Object;
.source "GWSScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/wifiapi/GWSScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kt/wifiapi/GWSScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kt/wifiapi/GWSScanResult;
    .locals 9
    .parameter "in"

    .prologue
    .line 127
    new-instance v0, Lcom/kt/wifiapi/GWSScanResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/kt/wifiapi/GWSScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/kt/wifiapi/GWSScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kt/wifiapi/GWSScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kt/wifiapi/GWSScanResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 140
    new-array v0, p1, [Lcom/kt/wifiapi/GWSScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/kt/wifiapi/GWSScanResult$1;->newArray(I)[Lcom/kt/wifiapi/GWSScanResult;

    move-result-object v0

    return-object v0
.end method
