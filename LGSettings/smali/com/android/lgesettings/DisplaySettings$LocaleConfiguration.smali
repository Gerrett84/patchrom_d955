.class Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;
.super Ljava/lang/Object;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleConfiguration"
.end annotation


# instance fields
.field public familyLabel:Ljava/lang/String;

.field public familyName:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public mcc:I

.field public mnc:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1470
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1474
    iput v0, p0, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->mcc:I

    .line 1475
    iput v0, p0, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;->mnc:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/DisplaySettings$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1470
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySettings$LocaleConfiguration;-><init>()V

    return-void
.end method
