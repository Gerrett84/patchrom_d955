.class Lcom/android/lgesettings/LocationSettings$11;
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

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/LocationSettings;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/lgesettings/LocationSettings$11;->this$0:Lcom/android/lgesettings/LocationSettings;

    iput-object p2, p0, Lcom/android/lgesettings/LocationSettings$11;->val$cr:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 913
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$11;->this$0:Lcom/android/lgesettings/LocationSettings;

    iget-object v0, v0, Lcom/android/lgesettings/LocationSettings;->mWarnVzwSwitch:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$11;->val$cr:Landroid/content/ContentResolver;

    const-string v1, "vzw_lbs"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 915
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$11;->val$cr:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 917
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$11;->val$cr:Landroid/content/ContentResolver;

    const-string v1, "network"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 920
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 921
    return-void
.end method
