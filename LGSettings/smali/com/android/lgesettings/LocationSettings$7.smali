.class Lcom/android/lgesettings/LocationSettings$7;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/LocationSettings;->onToggleLocationAccess(Z)V
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
    .line 866
    iput-object p1, p0, Lcom/android/lgesettings/LocationSettings$7;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 868
    iget-object v2, p0, Lcom/android/lgesettings/LocationSettings$7;->this$0:Lcom/android/lgesettings/LocationSettings;

    iget-object v2, v2, Lcom/android/lgesettings/LocationSettings;->mWarnVzwSwitch:Landroid/app/Dialog;

    if-ne p1, v2, :cond_0

    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 870
    iget-object v2, p0, Lcom/android/lgesettings/LocationSettings$7;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 871
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 872
    .local v0, gpsEnabled:Z
    if-eqz v0, :cond_1

    .line 873
    iget-object v2, p0, Lcom/android/lgesettings/LocationSettings$7;->this$0:Lcom/android/lgesettings/LocationSettings;

    #getter for: Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/lgesettings/LocationSettings;->access$700(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 881
    .end local v0           #gpsEnabled:Z
    .end local v1           #res:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 878
    .restart local v0       #gpsEnabled:Z
    .restart local v1       #res:Landroid/content/ContentResolver;
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/LocationSettings$7;->this$0:Lcom/android/lgesettings/LocationSettings;

    #getter for: Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/lgesettings/LocationSettings;->access$700(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
