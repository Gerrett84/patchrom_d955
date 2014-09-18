.class final Landroid/view/Surface$ScreenCaptureParam$1;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface$ScreenCaptureParam;
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
        "Landroid/view/Surface$ScreenCaptureParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 953
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/Surface$ScreenCaptureParam;
    .locals 1
    .parameter "in"

    .prologue
    .line 958
    new-instance v0, Landroid/view/Surface$ScreenCaptureParam;

    invoke-direct {v0}, Landroid/view/Surface$ScreenCaptureParam;-><init>()V

    .line 959
    .local v0, param:Landroid/view/Surface$ScreenCaptureParam;
    invoke-virtual {v0, p1}, Landroid/view/Surface$ScreenCaptureParam;->readFromParcel(Landroid/os/Parcel;)V

    .line 960
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 953
    invoke-virtual {p0, p1}, Landroid/view/Surface$ScreenCaptureParam$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/Surface$ScreenCaptureParam;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/Surface$ScreenCaptureParam;
    .locals 1
    .parameter "size"

    .prologue
    .line 967
    new-array v0, p1, [Landroid/view/Surface$ScreenCaptureParam;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 953
    invoke-virtual {p0, p1}, Landroid/view/Surface$ScreenCaptureParam$1;->newArray(I)[Landroid/view/Surface$ScreenCaptureParam;

    move-result-object v0

    return-object v0
.end method
