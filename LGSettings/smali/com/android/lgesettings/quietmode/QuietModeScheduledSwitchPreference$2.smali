.class Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$2;
.super Ljava/lang/Object;
.source "QuietModeScheduledSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

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

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 151
    :goto_0
    return v1

    .line 139
    :pswitch_0
    const-string v3, "QuietModeScheduledSwitchPreference"

    const-string v4, "scheduled switch preference : onTouch / ACtion UP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->access$400(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 142
    .local v0, isQuietModeChecked:Z
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v3}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBScheduledTimeMode(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    invoke-virtual {v3, v2}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setSwitchClickable(Z)V

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .end local v0           #isQuietModeChecked:Z
    :cond_0
    move v0, v2

    .line 140
    goto :goto_1

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
