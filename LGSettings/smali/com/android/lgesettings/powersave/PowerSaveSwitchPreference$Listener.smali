.class Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "PowerSaveSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 31
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    .line 32
    .local v1, value:I
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->access$100(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq p2, v3, :cond_0

    .line 33
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->access$100(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 36
    :cond_0
    const-string v3, "power_save_enabler"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 37
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->access$200(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_enabled"

    invoke-static {v3, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, preState:I
    if-eq v0, v1, :cond_1

    .line 39
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->access$200(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_enabled"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 40
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->doPowerSaveService(Z)V
    invoke-static {v2, p2}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->access$300(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;Z)V

    .line 48
    .end local v0           #preState:I
    :cond_1
    :goto_1
    return-void

    .end local v1           #value:I
    :cond_2
    move v1, v2

    .line 31
    goto :goto_0

    .line 42
    .restart local v1       #value:I
    :cond_3
    const-string v3, "power_save_eco_mode"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->access$200(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "eco_mode"

    invoke-static {v3, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 44
    .restart local v0       #preState:I
    if-eq v0, v1, :cond_1

    .line 45
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->access$200(Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "eco_mode"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 53
    return-void
.end method
