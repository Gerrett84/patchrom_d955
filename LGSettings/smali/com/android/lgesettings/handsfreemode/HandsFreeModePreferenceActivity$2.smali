.class Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$2;
.super Ljava/lang/Object;
.source "HandsFreeModePreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->do_Init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$2;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;

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

    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 160
    :pswitch_0
    const-string v2, "soosin"

    const-string v3, "ACtion UP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$2;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;

    #getter for: Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->access$200(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    move-result-object v3

    iget-object v2, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$2;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;

    #getter for: Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->access$100(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeState(I)V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 163
    const-string v0, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$2;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;

    #getter for: Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->access$200(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$2;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;

    #getter for: Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->access$200(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->getDBHandsFreeModeState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeCall(I)V

    goto :goto_0

    :cond_2
    move v2, v0

    .line 161
    goto :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
