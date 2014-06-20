.class Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;
.super Ljava/lang/Object;
.source "QuietModeScheduleSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 180
    :goto_0
    return v1

    .line 160
    :pswitch_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    #setter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z
    invoke-static {v2, v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$002(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;Z)Z

    .line 161
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$000(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBScheduledTimeMode(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$000(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->menuSetEnabled(Z)V

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 165
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getDBNotiShow()I
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBScheduledTimeMode(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$400(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->save()V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getDBNotiShow()I
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->ShowWarningDialog()V
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$500(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBScheduledTimeMode(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$400(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->save()V

    goto/16 :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
