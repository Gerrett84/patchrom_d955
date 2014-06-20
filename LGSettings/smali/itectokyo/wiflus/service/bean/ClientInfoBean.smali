.class public Litectokyo/wiflus/service/bean/ClientInfoBean;
.super Ljava/lang/Object;
.source "ClientInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Litectokyo/wiflus/service/bean/ClientInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:I

.field private basePath:Ljava/lang/String;

.field private duid:Ljava/lang/String;

.field private hostInfo:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private pid:I

.field private specifyInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Litectokyo/wiflus/service/bean/ClientInfoBean$1;

    invoke-direct {v0}, Litectokyo/wiflus/service/bean/ClientInfoBean$1;-><init>()V

    sput-object v0, Litectokyo/wiflus/service/bean/ClientInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "appId"
    .parameter "password"
    .parameter "basePath"
    .parameter "duid"
    .parameter "hostInfo"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->appId:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->pid:I

    .line 34
    iput-object p2, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->password:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->basePath:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->duid:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->hostInfo:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/bean/ClientInfoBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 158
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->appId:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->pid:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->password:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->basePath:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->duid:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->hostInfo:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->specifyInfo:Ljava/lang/String;

    .line 191
    return-void
.end method


# virtual methods
.method public clone()Litectokyo/wiflus/service/bean/ClientInfoBean;
    .locals 6

    .prologue
    .line 166
    new-instance v0, Litectokyo/wiflus/service/bean/ClientInfoBean;

    iget v1, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->appId:I

    iget-object v2, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->password:Ljava/lang/String;

    iget-object v3, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->basePath:Ljava/lang/String;

    iget-object v4, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->duid:Ljava/lang/String;

    iget-object v5, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->hostInfo:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Litectokyo/wiflus/service/bean/ClientInfoBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v0, cib:Litectokyo/wiflus/service/bean/ClientInfoBean;
    iget-object v1, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->specifyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Litectokyo/wiflus/service/bean/ClientInfoBean;->setSpecifyInfo(Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Litectokyo/wiflus/service/bean/ClientInfoBean;->clone()Litectokyo/wiflus/service/bean/ClientInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public setSpecifyInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "specifyInfo"

    .prologue
    .line 149
    iput-object p1, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->specifyInfo:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 173
    iget v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->appId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->basePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->duid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->hostInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Litectokyo/wiflus/service/bean/ClientInfoBean;->specifyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    return-void
.end method
