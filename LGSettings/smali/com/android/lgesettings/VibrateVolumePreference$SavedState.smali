.class Lcom/android/lgesettings/VibrateVolumePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "VibrateVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/VibrateVolumePreference;
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
            "Lcom/android/lgesettings/VibrateVolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 351
    new-instance v0, Lcom/android/lgesettings/VibrateVolumePreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/lgesettings/VibrateVolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 328
    new-instance v0, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    invoke-direct {v0}, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->mVolumeStore:Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    .line 332
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->mVolumeStore:Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;->volume:I

    .line 333
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->mVolumeStore:Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;->originalVolume:I

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 328
    new-instance v0, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    invoke-direct {v0}, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->mVolumeStore:Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    .line 349
    return-void
.end method


# virtual methods
.method getVolumeStore()Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->mVolumeStore:Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 338
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 339
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->mVolumeStore:Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    iget v0, v0, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->mVolumeStore:Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    iget v0, v0, Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    return-void
.end method
