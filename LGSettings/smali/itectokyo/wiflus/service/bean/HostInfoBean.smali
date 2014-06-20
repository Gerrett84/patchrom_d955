.class public Litectokyo/wiflus/service/bean/HostInfoBean;
.super Ljava/lang/Object;
.source "HostInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Litectokyo/wiflus/service/bean/HostInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:I

.field private connection:I

.field private groupOwner:Z

.field private info:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private reqConnectMac:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Litectokyo/wiflus/service/bean/HostInfoBean$1;

    invoke-direct {v0}, Litectokyo/wiflus/service/bean/HostInfoBean$1;-><init>()V

    sput-object v0, Litectokyo/wiflus/service/bean/HostInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/bean/HostInfoBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 156
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->uid:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->mac:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->reqConnectMac:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .local v0, isGo:I
    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->groupOwner:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->connection:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->info:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->tag:Ljava/lang/String;

    .line 184
    return-void

    .line 180
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->appId:I

    return v0
.end method

.method public getConnection()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->connection:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestConnectMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->reqConnectMac:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isGroupOwner()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->groupOwner:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 165
    iget-object v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->uid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->mac:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->reqConnectMac:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-boolean v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->groupOwner:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 169
    .local v0, isGo:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->connection:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->info:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Litectokyo/wiflus/service/bean/HostInfoBean;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    return-void

    .line 168
    .end local v0           #isGo:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
