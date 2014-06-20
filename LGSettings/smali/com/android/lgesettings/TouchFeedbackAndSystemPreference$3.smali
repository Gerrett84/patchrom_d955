.class Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$3;
.super Ljava/lang/Object;
.source "TouchFeedbackAndSystemPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_InitRunnableMenu_touch()V
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
    .line 277
    iput-object p1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$3;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 279
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$3;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    #getter for: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mSoundEffects:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$400(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$3;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    #calls: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->UpdateSoundEffect(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$200(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;Z)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$3;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    const/4 v1, 0x0

    #calls: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->UpdateSoundEffect(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$200(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;Z)V

    goto :goto_0
.end method
