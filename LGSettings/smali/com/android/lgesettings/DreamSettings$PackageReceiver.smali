.class Lcom/android/lgesettings/DreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DreamSettings;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/lgesettings/DreamSettings$PackageReceiver;->this$0:Lcom/android/lgesettings/DreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/DreamSettings;Lcom/android/lgesettings/DreamSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DreamSettings$PackageReceiver;-><init>(Lcom/android/lgesettings/DreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 536
    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/DreamSettings;->access$600(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$PackageReceiver;->this$0:Lcom/android/lgesettings/DreamSettings;

    #calls: Lcom/android/lgesettings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/lgesettings/DreamSettings;->access$400(Lcom/android/lgesettings/DreamSettings;)V

    .line 538
    return-void
.end method
