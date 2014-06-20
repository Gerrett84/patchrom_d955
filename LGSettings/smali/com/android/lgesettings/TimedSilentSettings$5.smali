.class Lcom/android/lgesettings/TimedSilentSettings$5;
.super Ljava/lang/Object;
.source "TimedSilentSettings.java"

# interfaces
.implements Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TimedSilentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TimedSilentSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TimedSilentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 6
    .parameter "c"
    .parameter "dateFormat"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 372
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 373
    .local v0, hour:I
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 375
    .local v1, minute:I
    const-string v2, "right"

    iget-object v3, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/TimedSilentSettings;->access$200(Lcom/android/lgesettings/TimedSilentSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$700(Lcom/android/lgesettings/TimedSilentSettings;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$700(Lcom/android/lgesettings/TimedSilentSettings;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 399
    :cond_0
    :goto_0
    const-string v2, "soosin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TitleBuilder] position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/lgesettings/TimedSilentSettings;->access$200(Lcom/android/lgesettings/TimedSilentSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hour : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minute : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    const v3, 0x7f080122

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/TimedSilentSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 388
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$700(Lcom/android/lgesettings/TimedSilentSettings;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$700(Lcom/android/lgesettings/TimedSilentSettings;)Lcom/android/lgesettings/QuietTimeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 389
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$5;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method
