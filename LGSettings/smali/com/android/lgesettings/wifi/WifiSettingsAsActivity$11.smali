.class Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$11;
.super Ljava/lang/Object;
.source "WifiSettingsAsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->createTutorialYNPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$11;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 790
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$11;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_interactive_help_tips"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 793
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
