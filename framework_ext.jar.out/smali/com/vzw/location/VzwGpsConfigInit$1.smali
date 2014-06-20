.class Lcom/vzw/location/VzwGpsConfigInit$1;
.super Ljava/lang/Object;
.source "VzwGpsConfigInit.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsConfigInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vzw/location/VzwGpsConfigInit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsConfigInit;
    .locals 5
    .parameter "parcel"

    .prologue
    .line 268
    new-instance v2, Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v2}, Lcom/vzw/location/VzwGpsConfigInit;-><init>()V

    .line 269
    .local v2, vz:Lcom/vzw/location/VzwGpsConfigInit;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    #setter for: Lcom/vzw/location/VzwGpsConfigInit;->mApplicationId:J
    invoke-static {v2, v3, v4}, Lcom/vzw/location/VzwGpsConfigInit;->access$0(Lcom/vzw/location/VzwGpsConfigInit;J)V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/vzw/location/VzwGpsConfigInit;->access$1(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, len:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ltz v1, :cond_0

    .line 273
    new-array v0, v1, [B

    .line 274
    .local v0, bytes:[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 276
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    #setter for: Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;
    invoke-static {v2, v3}, Lcom/vzw/location/VzwGpsConfigInit;->access$2(Lcom/vzw/location/VzwGpsConfigInit;Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0           #bytes:[B
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    #setter for: Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I
    invoke-static {v2, v3}, Lcom/vzw/location/VzwGpsConfigInit;->access$3(Lcom/vzw/location/VzwGpsConfigInit;I)V

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/vzw/location/VzwGpsConfigInit;->access$4(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/vzw/location/VzwGpsConfigInit;->mFullyQualifiedAppName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/vzw/location/VzwGpsConfigInit;->access$5(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostName:Ljava/lang/String;

    .line 284
    return-object v2

    .line 277
    .restart local v0       #bytes:[B
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsConfigInit;
    .locals 1
    .parameter "size"

    .prologue
    .line 288
    new-array v0, p1, [Lcom/vzw/location/VzwGpsConfigInit;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit$1;->newArray(I)[Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v0

    return-object v0
.end method
