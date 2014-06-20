.class Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/inputmethod/InputMethodPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/inputmethod/InputMethodPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 68
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/lgesettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/lgesettings/inputmethod/InputMethodPreference;->access$000(Lcom/android/lgesettings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/lgesettings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/lgesettings/SettingsPreferenceFragment;
    invoke-static {v3}, Lcom/android/lgesettings/inputmethod/InputMethodPreference;->access$100(Lcom/android/lgesettings/inputmethod/InputMethodPreference;)Lcom/android/lgesettings/SettingsPreferenceFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkAllowMicrophoneIME(Landroid/content/ComponentName;Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    invoke-virtual {v0, v5, v4}, Lcom/android/lgesettings/inputmethod/InputMethodPreference;->setChecked(ZZ)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    invoke-virtual {v0, v5, v4}, Lcom/android/lgesettings/inputmethod/InputMethodPreference;->setChecked(ZZ)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/lgesettings/inputmethod/InputMethodPreference;->mIsSystemIme:Z
    invoke-static {v0}, Lcom/android/lgesettings/inputmethod/InputMethodPreference;->access$200(Lcom/android/lgesettings/inputmethod/InputMethodPreference;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    invoke-virtual {v0, v4, v4}, Lcom/android/lgesettings/inputmethod/InputMethodPreference;->setChecked(ZZ)V

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/lgesettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v1}, Lcom/android/lgesettings/inputmethod/InputMethodPreference;->access$000(Lcom/android/lgesettings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/lgesettings/inputmethod/InputMethodPreference;

    #calls: Lcom/android/lgesettings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/lgesettings/inputmethod/InputMethodPreference;)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/inputmethod/InputMethodPreference;->access$300(Lcom/android/lgesettings/inputmethod/InputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/android/lgesettings/inputmethod/InputMethodPreference;)V

    goto :goto_0
.end method
