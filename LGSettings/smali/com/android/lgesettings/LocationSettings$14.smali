.class Lcom/android/lgesettings/LocationSettings$14;
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
    .line 1034
    iput-object p1, p0, Lcom/android/lgesettings/LocationSettings$14;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$14;->this$0:Lcom/android/lgesettings/LocationSettings;

    iget-object v0, v0, Lcom/android/lgesettings/LocationSettings;->mWarnUscSwitch:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$14;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1040
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$14;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1056
    :cond_0
    return-void
.end method
