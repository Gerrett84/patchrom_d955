.class Lcom/android/lgesettings/lge/LedBrightnessPreference$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/lgesettings/lge/LedBrightnessPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference$1;->this$0:Lcom/android/lgesettings/lge/LedBrightnessPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 59
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 60
    iget-object v2, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference$1;->this$0:Lcom/android/lgesettings/lge/LedBrightnessPreference;

    invoke-virtual {v2}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, resolver:Landroid/content/ContentResolver;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 62
    .local v1, value:I
    const-string v2, "LedBrightnessPreference"

    const-string v3, "save Brightness DB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, "led_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #value:I
    :cond_0
    return-void
.end method
