.class final Lcom/android/internal/telephony/uicc/SmartCardResult$1;
.super Ljava/lang/Object;
.source "SmartCardResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SmartCardResult;
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
        "Lcom/android/internal/telephony/uicc/SmartCardResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/SmartCardResult;
    .locals 1
    .parameter "source"

    .prologue
    .line 25
    new-instance v0, Lcom/android/internal/telephony/uicc/SmartCardResult;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/SmartCardResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SmartCardResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/SmartCardResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/uicc/SmartCardResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 29
    new-array v0, p1, [Lcom/android/internal/telephony/uicc/SmartCardResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SmartCardResult$1;->newArray(I)[Lcom/android/internal/telephony/uicc/SmartCardResult;

    move-result-object v0

    return-object v0
.end method
