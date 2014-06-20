.class Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$2;
.super Ljava/lang/Object;
.source "QuietModeSwitchForActivationNowPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 98
    :goto_0
    return v1

    .line 86
    :pswitch_0
    const-string v3, "QuietModeSwitchPreferenceForActivationNow"

    const-string v4, "onTouch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->access$000(Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 88
    .local v0, isQuietModeChecked:Z
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v3}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->access$100(Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSwichQuietMode(Z)V

    .line 89
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->access$000(Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 90
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    invoke-virtual {v3, v2}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setSwitchClickable(Z)V

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 92
    const-string v2, "QuietModeSwitchPreferenceForActivationNow"

    const-string v3, "setOnTouchListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #isQuietModeChecked:Z
    :cond_0
    move v0, v2

    .line 87
    goto :goto_1

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
