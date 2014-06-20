.class Litectokyo/wiflus/service/bean/SendToInfoBean$1;
.super Ljava/lang/Object;
.source "SendToInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/service/bean/SendToInfoBean;
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
        "Litectokyo/wiflus/service/bean/SendToInfoBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Litectokyo/wiflus/service/bean/SendToInfoBean;
    .locals 2
    .parameter "in"

    .prologue
    .line 53
    new-instance v0, Litectokyo/wiflus/service/bean/SendToInfoBean;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Litectokyo/wiflus/service/bean/SendToInfoBean;-><init>(Landroid/os/Parcel;Litectokyo/wiflus/service/bean/SendToInfoBean;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Litectokyo/wiflus/service/bean/SendToInfoBean$1;->createFromParcel(Landroid/os/Parcel;)Litectokyo/wiflus/service/bean/SendToInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Litectokyo/wiflus/service/bean/SendToInfoBean;
    .locals 1
    .parameter "size"

    .prologue
    .line 57
    new-array v0, p1, [Litectokyo/wiflus/service/bean/SendToInfoBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Litectokyo/wiflus/service/bean/SendToInfoBean$1;->newArray(I)[Litectokyo/wiflus/service/bean/SendToInfoBean;

    move-result-object v0

    return-object v0
.end method
