.class Lcom/android/lgesettings/AccessibilitySettings$1;
.super Landroid/os/Handler;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/lgesettings/AccessibilitySettings$1;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 167
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$1;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    #calls: Lcom/android/lgesettings/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/lgesettings/AccessibilitySettings;->access$100(Lcom/android/lgesettings/AccessibilitySettings;)V

    .line 168
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$1;->this$0:Lcom/android/lgesettings/AccessibilitySettings;

    #calls: Lcom/android/lgesettings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/lgesettings/AccessibilitySettings;->access$200(Lcom/android/lgesettings/AccessibilitySettings;)V

    .line 169
    return-void
.end method
