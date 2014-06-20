.class Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$2;
.super Ljava/lang/Object;
.source "ConnectivitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

.field final synthetic val$nSoftwareType:I

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;Landroid/preference/Preference;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$2;->this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    iput-object p2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$2;->val$preference:Landroid/preference/Preference;

    iput p3, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$2;->val$nSoftwareType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 745
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$2;->val$preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 746
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$2;->this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    iget v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$2;->val$nSoftwareType:I

    #calls: Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->SendWIFIConnectionStatus(ZI)V
    invoke-static {v0, v2, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->access$1000(Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;ZI)V

    .line 747
    return-void
.end method
