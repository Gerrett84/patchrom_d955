.class Lcom/android/lgesettings/SettingsLicenseActivity$1;
.super Landroid/os/Handler;
.source "SettingsLicenseActivity.java"


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
    .line 165
    iput-object p1, p0, Lcom/android/lgesettings/SettingsLicenseActivity$1;->this$0:Lcom/android/lgesettings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 171
    iget-object v1, p0, Lcom/android/lgesettings/SettingsLicenseActivity$1;->this$0:Lcom/android/lgesettings/SettingsLicenseActivity;

    #getter for: Lcom/android/lgesettings/SettingsLicenseActivity;->mQuit:Z
    invoke-static {v1}, Lcom/android/lgesettings/SettingsLicenseActivity;->access$000(Lcom/android/lgesettings/SettingsLicenseActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 177
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/SettingsLicenseActivity$1;->this$0:Lcom/android/lgesettings/SettingsLicenseActivity;

    #calls: Lcom/android/lgesettings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/SettingsLicenseActivity;->access$100(Lcom/android/lgesettings/SettingsLicenseActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/SettingsLicenseActivity$1;->this$0:Lcom/android/lgesettings/SettingsLicenseActivity;

    #calls: Lcom/android/lgesettings/SettingsLicenseActivity;->showErrorAndFinish()V
    invoke-static {v1}, Lcom/android/lgesettings/SettingsLicenseActivity;->access$200(Lcom/android/lgesettings/SettingsLicenseActivity;)V

    goto :goto_0
.end method
