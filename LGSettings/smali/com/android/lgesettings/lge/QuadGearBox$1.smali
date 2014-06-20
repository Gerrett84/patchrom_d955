.class Lcom/android/lgesettings/lge/QuadGearBox$1;
.super Landroid/database/ContentObserver;
.source "QuadGearBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/QuadGearBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/QuadGearBox;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/QuadGearBox;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/lgesettings/lge/QuadGearBox$1;->this$0:Lcom/android/lgesettings/lge/QuadGearBox;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 59
    iget-object v3, p0, Lcom/android/lgesettings/lge/QuadGearBox$1;->this$0:Lcom/android/lgesettings/lge/QuadGearBox;

    invoke-virtual {v3}, Lcom/android/lgesettings/lge/QuadGearBox;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "eco_mode"

    invoke-static {v3, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, current_mode:I
    iget-object v3, p0, Lcom/android/lgesettings/lge/QuadGearBox$1;->this$0:Lcom/android/lgesettings/lge/QuadGearBox;

    #getter for: Lcom/android/lgesettings/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/lge/QuadGearBox;->access$000(Lcom/android/lgesettings/lge/QuadGearBox;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/android/lgesettings/lge/QuadGearBox$1;->this$0:Lcom/android/lgesettings/lge/QuadGearBox;

    #getter for: Lcom/android/lgesettings/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/lge/QuadGearBox;->access$000(Lcom/android/lgesettings/lge/QuadGearBox;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-lez v0, :cond_1

    move v3, v1

    :goto_0
    if-eq v4, v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/android/lgesettings/lge/QuadGearBox$1;->this$0:Lcom/android/lgesettings/lge/QuadGearBox;

    #getter for: Lcom/android/lgesettings/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/lge/QuadGearBox;->access$000(Lcom/android/lgesettings/lge/QuadGearBox;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-lez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 63
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuadGearBox$1;->this$0:Lcom/android/lgesettings/lge/QuadGearBox;

    iget-object v2, p0, Lcom/android/lgesettings/lge/QuadGearBox$1;->this$0:Lcom/android/lgesettings/lge/QuadGearBox;

    #getter for: Lcom/android/lgesettings/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/lge/QuadGearBox;->access$000(Lcom/android/lgesettings/lge/QuadGearBox;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    #calls: Lcom/android/lgesettings/lge/QuadGearBox;->updateImage(Z)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/lge/QuadGearBox;->access$100(Lcom/android/lgesettings/lge/QuadGearBox;Z)V

    .line 66
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 61
    goto :goto_0

    :cond_2
    move v1, v2

    .line 62
    goto :goto_1
.end method
