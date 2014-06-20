.class Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$1;
.super Ljava/lang/Object;
.source "WifiSettingsAsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
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
    .line 222
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->doScan()V

    .line 228
    :cond_0
    return-void
.end method
