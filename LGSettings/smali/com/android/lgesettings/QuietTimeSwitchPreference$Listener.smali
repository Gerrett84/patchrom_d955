.class Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "QuietTimeSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/QuietTimeSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/QuietTimeSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/QuietTimeSwitchPreference;Lcom/android/lgesettings/QuietTimeSwitchPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/QuietTimeSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 28
    const-string v0, "QuietTimeSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggle button state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v3

    if-ne p2, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/QuietTimeInfo;->setDBQuietTimeState(I)V

    .line 30
    const-string v0, "QuietTimeSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timed Silent DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v4}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setTime(Z)V

    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setTime(Z)V

    .line 35
    if-ne v1, p2, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v1}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBBeforeAudioMode(I)V

    .line 37
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v1}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/lgesettings/QuietTimeInfo;->setDBSaveTime(J)V

    .line 38
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/QuietTimeInfo;->registerAlarm(Z)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/QuietTimeInfo;->SetSilentModeState(Z)V

    .line 42
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->SetQuietTimeSummary()V

    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    #getter for: Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/lgesettings/QuietTimeInfo;->TimedSilentReceiverEnable(Landroid/content/Context;Z)V

    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->setChecked(Z)V

    .line 47
    return-void

    :cond_1
    move v0, v2

    .line 29
    goto/16 :goto_0
.end method
