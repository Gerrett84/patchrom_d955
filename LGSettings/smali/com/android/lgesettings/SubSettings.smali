.class public Lcom/android/lgesettings/SubSettings;
.super Lcom/android/lgesettings/Settings;
.source "SubSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/lgesettings/SubSettings;->finish()V

    .line 28
    const/4 v0, 0x1

    return v0
.end method
