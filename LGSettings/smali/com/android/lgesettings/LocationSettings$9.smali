.class Lcom/android/lgesettings/LocationSettings$9;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 886
    iput-object p1, p0, Lcom/android/lgesettings/LocationSettings$9;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$9;->this$0:Lcom/android/lgesettings/LocationSettings;

    #getter for: Lcom/android/lgesettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/lgesettings/LocationSettings;->access$700(Lcom/android/lgesettings/LocationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 890
    return-void
.end method
