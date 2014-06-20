.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$9;
.super Ljava/util/TimerTask;
.source "VibrateCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->hapticFeedbackOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$9;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$9;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$9;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHaptic_value:I
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$1800(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 695
    return-void
.end method
