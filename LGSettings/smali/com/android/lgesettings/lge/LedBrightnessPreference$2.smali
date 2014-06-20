.class Lcom/android/lgesettings/lge/LedBrightnessPreference$2;
.super Landroid/database/ContentObserver;
.source "LedBrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/LedBrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/LedBrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/LedBrightnessPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference$2;->this$0:Lcom/android/lgesettings/lge/LedBrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference$2;->this$0:Lcom/android/lgesettings/lge/LedBrightnessPreference;

    #calls: Lcom/android/lgesettings/lge/LedBrightnessPreference;->onBrightnessChanged()V
    invoke-static {v0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->access$000(Lcom/android/lgesettings/lge/LedBrightnessPreference;)V

    .line 86
    return-void
.end method
