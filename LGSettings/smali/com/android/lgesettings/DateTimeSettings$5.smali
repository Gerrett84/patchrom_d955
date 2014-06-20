.class Lcom/android/lgesettings/DateTimeSettings$5;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/lgesettings/DateTimeSettings$5;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/lgesettings/DateTimeSettings$5;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 793
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 794
    iget-object v1, p0, Lcom/android/lgesettings/DateTimeSettings$5;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 796
    :cond_0
    return-void
.end method
