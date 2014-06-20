.class Litectokyo/wiflus/service/bean/ClientInfoBean$1;
.super Ljava/lang/Object;
.source "ClientInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/service/bean/ClientInfoBean;
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
        "Litectokyo/wiflus/service/bean/ClientInfoBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Litectokyo/wiflus/service/bean/ClientInfoBean;
    .locals 1
    .parameter "source"

    .prologue
    .line 196
    new-instance v0, Litectokyo/wiflus/service/bean/ClientInfoBean;

    invoke-direct {v0, p1}, Litectokyo/wiflus/service/bean/ClientInfoBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Litectokyo/wiflus/service/bean/ClientInfoBean$1;->createFromParcel(Landroid/os/Parcel;)Litectokyo/wiflus/service/bean/ClientInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Litectokyo/wiflus/service/bean/ClientInfoBean;
    .locals 1
    .parameter "size"

    .prologue
    .line 201
    new-array v0, p1, [Litectokyo/wiflus/service/bean/ClientInfoBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Litectokyo/wiflus/service/bean/ClientInfoBean$1;->newArray(I)[Litectokyo/wiflus/service/bean/ClientInfoBean;

    move-result-object v0

    return-object v0
.end method
