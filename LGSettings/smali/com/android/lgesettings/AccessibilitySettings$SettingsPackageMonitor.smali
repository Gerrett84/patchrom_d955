.class Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/AccessibilitySettings;Lcom/android/lgesettings/AccessibilitySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/lgesettings/AccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 807
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    #getter for: Lcom/android/lgesettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/AccessibilitySettings;->access$400(Lcom/android/lgesettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 808
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    #getter for: Lcom/android/lgesettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/AccessibilitySettings;->access$400(Lcom/android/lgesettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 809
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 813
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    #getter for: Lcom/android/lgesettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/AccessibilitySettings;->access$400(Lcom/android/lgesettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 814
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    #getter for: Lcom/android/lgesettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/AccessibilitySettings;->access$400(Lcom/android/lgesettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 815
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 819
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    #getter for: Lcom/android/lgesettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/AccessibilitySettings;->access$400(Lcom/android/lgesettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 820
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    #getter for: Lcom/android/lgesettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/AccessibilitySettings;->access$400(Lcom/android/lgesettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 821
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 825
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    #getter for: Lcom/android/lgesettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/AccessibilitySettings;->access$400(Lcom/android/lgesettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 826
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    #getter for: Lcom/android/lgesettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/AccessibilitySettings;->access$400(Lcom/android/lgesettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 827
    return-void
.end method
