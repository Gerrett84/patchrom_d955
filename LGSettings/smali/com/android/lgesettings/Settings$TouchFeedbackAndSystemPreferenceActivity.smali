.class public Lcom/android/lgesettings/Settings$TouchFeedbackAndSystemPreferenceActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchFeedbackAndSystemPreferenceActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2441
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 2445
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 2446
    const v0, 0x7f080b7b

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings$TouchFeedbackAndSystemPreferenceActivity;->setTitle(I)V

    .line 2447
    return-void
.end method
