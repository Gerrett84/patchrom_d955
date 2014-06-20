.class Lcom/android/lgesettings/vibratecreation/VibratePatternInfo$1;
.super Ljava/util/TimerTask;
.source "VibratePatternInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->hapticFeedbackOff([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->access$000(Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v2, v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mHaptic_value:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    return-void
.end method
