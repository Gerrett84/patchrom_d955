.class Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$1;
.super Landroid/os/Handler;
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
    .line 101
    iput-object p1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$1;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 105
    :sswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$1;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    #getter for: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mMPCSPowerUpTonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$100(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$1;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    #calls: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPowerToneSummary()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$000(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :sswitch_1
    const-string v0, "TouchFeedbackAndSystemPreference"

    const-string v1, "Handler()MSG_UPDATE_SOUND_EFFECT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$1;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    #calls: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->UpdateSoundEffect(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$200(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;Z)V

    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
