.class public final Litectokyo/wiflus/service/bean/MessageBean;
.super Ljava/lang/Object;
.source "MessageBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Litectokyo/wiflus/service/bean/MessageBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private command:I

.field private data:[B

.field private destUid:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Litectokyo/wiflus/service/bean/MessageBean$1;

    invoke-direct {v0}, Litectokyo/wiflus/service/bean/MessageBean$1;-><init>()V

    sput-object v0, Litectokyo/wiflus/service/bean/MessageBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Litectokyo/wiflus/service/bean/MessageBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Litectokyo/wiflus/service/bean/MessageBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/bean/MessageBean;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getCommand()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->command:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->data:[B

    return-object v0
.end method

.method public getDestUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->destUid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->type:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Litectokyo/wiflus/service/bean/MessageBean;->command:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Litectokyo/wiflus/service/bean/MessageBean;->type:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, data_size:I
    if-lez v0, :cond_0

    .line 127
    new-array v1, v0, [B

    iput-object v1, p0, Litectokyo/wiflus/service/bean/MessageBean;->data:[B

    .line 128
    iget-object v1, p0, Litectokyo/wiflus/service/bean/MessageBean;->data:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Litectokyo/wiflus/service/bean/MessageBean;->destUid:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 111
    iget v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->command:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->data:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 119
    :goto_0
    iget-object v0, p0, Litectokyo/wiflus/service/bean/MessageBean;->destUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
