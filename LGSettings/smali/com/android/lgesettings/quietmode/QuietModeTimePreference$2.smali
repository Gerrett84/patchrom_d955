.class Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;
.super Ljava/lang/Object;
.source "QuietModeTimePreference.java"

# interfaces
.implements Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeTimePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

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

    .line 219
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 220
    .local v0, hour:I
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 222
    .local v1, minute:I
    const-string v2, "right"

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$400(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$500(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$500(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$600(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$600(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    :cond_0
    :goto_0
    const-string v2, "soosin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TitleBuilder] position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$400(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Ljava/lang/String;

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

    .line 247
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$700(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080122

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$600(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$600(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$500(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$500(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 236
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$600(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$600(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$600(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$600(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method
