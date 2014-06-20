.class Lcom/android/lgesettings/LocationSettings$5;
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
    .line 548
    iput-object p1, p0, Lcom/android/lgesettings/LocationSettings$5;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$5;->this$0:Lcom/android/lgesettings/LocationSettings;

    iget-object v0, v0, Lcom/android/lgesettings/LocationSettings;->mGpsService:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$5;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 554
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$5;->this$0:Lcom/android/lgesettings/LocationSettings;

    #getter for: Lcom/android/lgesettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/LocationSettings;->access$400(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings$5;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 557
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 558
    return-void
.end method
