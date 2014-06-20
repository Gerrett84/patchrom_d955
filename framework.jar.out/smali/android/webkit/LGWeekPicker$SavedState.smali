.class Landroid/webkit/LGWeekPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LGWeekPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/LGWeekPicker;
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
            "Landroid/webkit/LGWeekPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mWeek:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 564
    new-instance v0, Landroid/webkit/LGWeekPicker$SavedState$1;

    invoke-direct {v0}, Landroid/webkit/LGWeekPicker$SavedState$1;-><init>()V

    sput-object v0, Landroid/webkit/LGWeekPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/LGWeekPicker$SavedState;->mYear:I

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/LGWeekPicker$SavedState;->mWeek:I

    .line 553
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/webkit/LGWeekPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Landroid/webkit/LGWeekPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .parameter "superState"
    .parameter "year"
    .parameter "week"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 542
    iput p2, p0, Landroid/webkit/LGWeekPicker$SavedState;->mYear:I

    .line 543
    iput p3, p0, Landroid/webkit/LGWeekPicker$SavedState;->mWeek:I

    .line 544
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILandroid/webkit/LGWeekPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 532
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/LGWeekPicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/LGWeekPicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget v0, p0, Landroid/webkit/LGWeekPicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/LGWeekPicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget v0, p0, Landroid/webkit/LGWeekPicker$SavedState;->mWeek:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 557
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 558
    iget v0, p0, Landroid/webkit/LGWeekPicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget v0, p0, Landroid/webkit/LGWeekPicker$SavedState;->mWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    return-void
.end method
