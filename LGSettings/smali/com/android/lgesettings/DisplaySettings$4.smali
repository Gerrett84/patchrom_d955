.class Lcom/android/lgesettings/DisplaySettings$4;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/lgesettings/DisplaySettings$4;->this$0:Lcom/android/lgesettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$4;->this$0:Lcom/android/lgesettings/DisplaySettings;

    #getter for: Lcom/android/lgesettings/DisplaySettings;->mBrightnessPreference:Lcom/android/lgesettings/BrightnessPreference;
    invoke-static {v0}, Lcom/android/lgesettings/DisplaySettings;->access$200(Lcom/android/lgesettings/DisplaySettings;)Lcom/android/lgesettings/BrightnessPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/BrightnessPreference;->selectsetSubtitle(Z)V

    .line 214
    return-void
.end method
