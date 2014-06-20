.class public Litectokyo/wiflus/service/bean/DeviceInfoBean;
.super Ljava/lang/Object;
.source "DeviceInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Litectokyo/wiflus/service/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connected:Z

.field private equalsPasswd:Z

.field private extra:Ljava/lang/String;

.field private groupOwner:Z

.field private mac:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private osType:I

.field private wiflusType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Litectokyo/wiflus/service/bean/DeviceInfoBean$1;

    invoke-direct {v0}, Litectokyo/wiflus/service/bean/DeviceInfoBean$1;-><init>()V

    sput-object v0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 210
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/bean/DeviceInfoBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 212
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, isGo:I
    if-ne v2, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->groupOwner:Z

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, isConnected:I
    if-ne v1, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->connected:Z

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->name:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->mac:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    .local v0, equalsPass:I
    if-ne v0, v4, :cond_2

    :goto_2
    iput-boolean v4, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->equalsPasswd:Z

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->wiflusType:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->osType:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->extra:Ljava/lang/String;

    .line 246
    return-void

    .end local v0           #equalsPass:I
    .end local v1           #isConnected:I
    :cond_0
    move v3, v5

    .line 236
    goto :goto_0

    .restart local v1       #isConnected:I
    :cond_1
    move v3, v5

    .line 238
    goto :goto_1

    .restart local v0       #equalsPass:I
    :cond_2
    move v4, v5

    .line 242
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 221
    iget-boolean v5, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->groupOwner:Z

    if-eqz v5, :cond_0

    move v2, v3

    .line 222
    .local v2, isGo:I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-boolean v5, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->connected:Z

    if-eqz v5, :cond_1

    move v1, v3

    .line 224
    .local v1, isConnected:I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v5, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v5, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->mac:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-boolean v5, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->equalsPasswd:Z

    if-eqz v5, :cond_2

    move v0, v3

    .line 228
    .local v0, equalsPass:I
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v3, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->wiflusType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v3, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->osType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v3, p0, Litectokyo/wiflus/service/bean/DeviceInfoBean;->extra:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    return-void

    .end local v0           #equalsPass:I
    .end local v1           #isConnected:I
    .end local v2           #isGo:I
    :cond_0
    move v2, v4

    .line 221
    goto :goto_0

    .restart local v2       #isGo:I
    :cond_1
    move v1, v4

    .line 223
    goto :goto_1

    .restart local v1       #isConnected:I
    :cond_2
    move v0, v4

    .line 227
    goto :goto_2
.end method
