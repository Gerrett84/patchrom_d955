.class public Litectokyo/wiflus/service/bean/CommandBean;
.super Ljava/lang/Object;
.source "CommandBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Litectokyo/wiflus/service/bean/CommandBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private data:Landroid/os/Parcelable;

.field private deviceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Litectokyo/wiflus/service/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private key:I

.field private wifiConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Litectokyo/wiflus/service/bean/CommandBean$1;

    invoke-direct {v0}, Litectokyo/wiflus/service/bean/CommandBean$1;-><init>()V

    sput-object v0, Litectokyo/wiflus/service/bean/CommandBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "key"
    .parameter "bundle"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->deviceInfoList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->wifiConfigs:Ljava/util/ArrayList;

    .line 62
    iput p1, p0, Litectokyo/wiflus/service/bean/CommandBean;->key:I

    .line 63
    iput-object p2, p0, Litectokyo/wiflus/service/bean/CommandBean;->bundle:Landroid/os/Bundle;

    .line 64
    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/net/wifi/WifiInfo;)V
    .locals 1
    .parameter "key"
    .parameter "bundle"
    .parameter
    .parameter "wifiInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/net/wifi/WifiInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, wifiConfigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->deviceInfoList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->wifiConfigs:Ljava/util/ArrayList;

    .line 50
    iput p1, p0, Litectokyo/wiflus/service/bean/CommandBean;->key:I

    .line 51
    iput-object p2, p0, Litectokyo/wiflus/service/bean/CommandBean;->bundle:Landroid/os/Bundle;

    .line 52
    iput-object p3, p0, Litectokyo/wiflus/service/bean/CommandBean;->wifiConfigs:Ljava/util/ArrayList;

    .line 53
    iput-object p4, p0, Litectokyo/wiflus/service/bean/CommandBean;->data:Landroid/os/Parcelable;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->deviceInfoList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->wifiConfigs:Ljava/util/ArrayList;

    .line 184
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/bean/CommandBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 185
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->key:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->bundle:Landroid/os/Bundle;

    .line 161
    iget v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->key:I

    sparse-switch v0, :sswitch_data_0

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->data:Landroid/os/Parcelable;

    .line 179
    :goto_0
    iget-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->deviceInfoList:Ljava/util/ArrayList;

    const-class v1, Litectokyo/wiflus/service/bean/DeviceInfoBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 180
    iget-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->wifiConfigs:Ljava/util/ArrayList;

    const-class v1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 181
    return-void

    .line 164
    :sswitch_0
    const-class v0, Litectokyo/wiflus/service/bean/ClientInfoBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->data:Landroid/os/Parcelable;

    goto :goto_0

    .line 167
    :sswitch_1
    const-class v0, Litectokyo/wiflus/service/bean/TransferInfoBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->data:Landroid/os/Parcelable;

    goto :goto_0

    .line 170
    :sswitch_2
    const-class v0, Litectokyo/wiflus/service/bean/DeviceInfoBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->data:Landroid/os/Parcelable;

    goto :goto_0

    .line 173
    :sswitch_3
    const-class v0, Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->data:Landroid/os/Parcelable;

    goto :goto_0

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_1
        0x82 -> :sswitch_3
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 133
    iget v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->data:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->deviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 137
    iget-object v0, p0, Litectokyo/wiflus/service/bean/CommandBean;->wifiConfigs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 138
    return-void
.end method
