.class Landroid/webkit/LGColorPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LGColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/LGColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/webkit/LGColorPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 378
    new-instance v0, Landroid/webkit/LGColorPicker$SavedState$1;

    invoke-direct {v0}, Landroid/webkit/LGColorPicker$SavedState$1;-><init>()V

    sput-object v0, Landroid/webkit/LGColorPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/LGColorPicker$SavedState;->mColor:I

    .line 368
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/webkit/LGColorPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Landroid/webkit/LGColorPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .parameter "superState"
    .parameter "color"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 359
    iput p2, p0, Landroid/webkit/LGColorPicker$SavedState;->mColor:I

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ILandroid/webkit/LGColorPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 350
    invoke-direct {p0, p1, p2}, Landroid/webkit/LGColorPicker$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/LGColorPicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 350
    iget v0, p0, Landroid/webkit/LGColorPicker$SavedState;->mColor:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 372
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 373
    iget v0, p0, Landroid/webkit/LGColorPicker$SavedState;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    return-void
.end method
