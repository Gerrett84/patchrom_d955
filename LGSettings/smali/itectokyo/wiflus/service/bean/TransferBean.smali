.class public final Litectokyo/wiflus/service/bean/TransferBean;
.super Ljava/lang/Object;
.source "TransferBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Litectokyo/wiflus/service/bean/TransferBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stibList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Litectokyo/wiflus/service/bean/SendToInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Litectokyo/wiflus/service/bean/TransferBean$1;

    invoke-direct {v0}, Litectokyo/wiflus/service/bean/TransferBean$1;-><init>()V

    sput-object v0, Litectokyo/wiflus/service/bean/TransferBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/service/bean/TransferBean;->stibList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/service/bean/TransferBean;->fileList:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {p0, p1}, Litectokyo/wiflus/service/bean/TransferBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Litectokyo/wiflus/service/bean/TransferBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/bean/TransferBean;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 174
    iget-object v0, p0, Litectokyo/wiflus/service/bean/TransferBean;->stibList:Ljava/util/ArrayList;

    const-class v1, Litectokyo/wiflus/service/bean/SendToInfoBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 175
    iget-object v0, p0, Litectokyo/wiflus/service/bean/TransferBean;->fileList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/TransferBean;->tag:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 168
    iget-object v0, p0, Litectokyo/wiflus/service/bean/TransferBean;->stibList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 169
    iget-object v0, p0, Litectokyo/wiflus/service/bean/TransferBean;->fileList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Litectokyo/wiflus/service/bean/TransferBean;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return-void
.end method
