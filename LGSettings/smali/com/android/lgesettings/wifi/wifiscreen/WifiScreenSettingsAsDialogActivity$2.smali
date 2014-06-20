.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity$2;
.super Ljava/lang/Object;
.source "WifiScreenSettingsAsDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->onInitView(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->finish()V

    .line 172
    return-void
.end method
