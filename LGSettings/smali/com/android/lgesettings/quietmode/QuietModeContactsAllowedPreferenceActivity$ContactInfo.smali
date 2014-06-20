.class public final Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;
.super Ljava/lang/Object;
.source "QuietModeContactsAllowedPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactInfo"
.end annotation


# static fields
.field public static EMPTY:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;


# instance fields
.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public personId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;

    invoke-direct {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;-><init>()V

    sput-object v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;->EMPTY:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
