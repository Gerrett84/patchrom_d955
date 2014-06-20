.class Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "QuietModeScheduledSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 45
    const-string v0, "QuietModeScheduledSwitchPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduled switch preference : onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBScheduledTimeMode(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v2

    const-string v3, "left"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTime(IILjava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->updateNotification()V
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->access$200(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)V

    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSummary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->access$300(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setSwitchClickable(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setChecked(Z)V

    .line 53
    return-void
.end method
