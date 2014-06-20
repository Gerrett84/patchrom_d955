.class Lcom/android/lgesettings/SettingsLicenseActivity$2;
.super Ljava/lang/Object;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SettingsLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/lgesettings/SettingsLicenseActivity$2;->this$0:Lcom/android/lgesettings/SettingsLicenseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dlgi"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity$2;->this$0:Lcom/android/lgesettings/SettingsLicenseActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/lgesettings/SettingsLicenseActivity;->mQuit:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/SettingsLicenseActivity;->access$002(Lcom/android/lgesettings/SettingsLicenseActivity;Z)Z

    .line 194
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity$2;->this$0:Lcom/android/lgesettings/SettingsLicenseActivity;

    #calls: Lcom/android/lgesettings/SettingsLicenseActivity;->cancelLoadData()V
    invoke-static {v0}, Lcom/android/lgesettings/SettingsLicenseActivity;->access$300(Lcom/android/lgesettings/SettingsLicenseActivity;)V

    .line 195
    return-void
.end method
