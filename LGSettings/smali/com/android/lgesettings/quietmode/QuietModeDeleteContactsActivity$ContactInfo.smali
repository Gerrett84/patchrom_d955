.class public final Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;
.super Ljava/lang/Object;
.source "QuietModeDeleteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactInfo"
.end annotation


# static fields
.field public static EMPTY:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;

    invoke-direct {v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;-><init>()V

    sput-object v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;->EMPTY:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$ContactInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
