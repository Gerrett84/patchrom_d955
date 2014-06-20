.class Lcom/android/lgesettings/LocationSettings$6;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/LocationSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/lgesettings/LocationSettings$6;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x1

    .line 641
    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings$6;->this$0:Lcom/android/lgesettings/LocationSettings;

    iget-object v1, v1, Lcom/android/lgesettings/LocationSettings;->mAssistedService:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings$6;->this$0:Lcom/android/lgesettings/LocationSettings;

    #getter for: Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/LocationSettings;->access$600(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 643
    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings$6;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    iget-object v3, p0, Lcom/android/lgesettings/LocationSettings$6;->this$0:Lcom/android/lgesettings/LocationSettings;

    #getter for: Lcom/android/lgesettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/LocationSettings;->access$600(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 645
    const-string v0, "hong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assistedgps value3 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/LocationSettings$6;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 648
    return-void

    .line 643
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
