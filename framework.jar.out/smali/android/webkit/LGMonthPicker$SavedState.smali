.class Landroid/webkit/LGMonthPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LGMonthPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/LGMonthPicker;
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
            "Landroid/webkit/LGMonthPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 586
    new-instance v0, Landroid/webkit/LGMonthPicker$SavedState$1;

    invoke-direct {v0}, Landroid/webkit/LGMonthPicker$SavedState$1;-><init>()V

    sput-object v0, Landroid/webkit/LGMonthPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 572
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/LGMonthPicker$SavedState;->mYear:I

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/LGMonthPicker$SavedState;->mMonth:I

    .line 575
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/webkit/LGMonthPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 554
    invoke-direct {p0, p1}, Landroid/webkit/LGMonthPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .parameter "superState"
    .parameter "year"
    .parameter "month"

    .prologue
    .line 563
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 564
    iput p2, p0, Landroid/webkit/LGMonthPicker$SavedState;->mYear:I

    .line 565
    iput p3, p0, Landroid/webkit/LGMonthPicker$SavedState;->mMonth:I

    .line 566
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILandroid/webkit/LGMonthPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 554
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/LGMonthPicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/LGMonthPicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 554
    iget v0, p0, Landroid/webkit/LGMonthPicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1100(Landroid/webkit/LGMonthPicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 554
    iget v0, p0, Landroid/webkit/LGMonthPicker$SavedState;->mMonth:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 579
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 580
    iget v0, p0, Landroid/webkit/LGMonthPicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget v0, p0, Landroid/webkit/LGMonthPicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    return-void
.end method
