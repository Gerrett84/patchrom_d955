.class Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "TouchFeedbackAndSystemPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$2;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$2;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    #calls: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->updateAllPreferences()V
    invoke-static {v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$300(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)V

    .line 122
    :cond_0
    return-void
.end method
