.class Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;
.super Ljava/lang/Object;
.source "ELESwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/ELESwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/ELESwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/lge/ELESwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;->this$0:Lcom/android/lgesettings/lge/ELESwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/lge/ELESwitchPreference;Lcom/android/lgesettings/lge/ELESwitchPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;-><init>(Lcom/android/lgesettings/lge/ELESwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v0, 0x1

    .line 38
    iget-object v1, p0, Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;->this$0:Lcom/android/lgesettings/lge/ELESwitchPreference;

    #getter for: Lcom/android/lgesettings/lge/ELESwitchPreference;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/lgesettings/lge/ELESwitchPreference;->access$100(Lcom/android/lgesettings/lge/ELESwitchPreference;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lge_notification_light_pulse"

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;->this$0:Lcom/android/lgesettings/lge/ELESwitchPreference;

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/lge/ELESwitchPreference;->setChecked(Z)V

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
