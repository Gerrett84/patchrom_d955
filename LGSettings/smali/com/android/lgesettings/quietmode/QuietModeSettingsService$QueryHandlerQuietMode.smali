.class Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;
.super Landroid/content/AsyncQueryHandler;
.source "QuietModeSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandlerQuietMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    .line 569
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 570
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    .line 575
    if-nez p3, :cond_0

    .line 610
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gez v0, :cond_1

    .line 580
    const-string v0, "QuietModeSettingsService"

    const-string v1, " cursor  close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 585
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 589
    const-string v0, "QuietModeSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [onQuerycomplete] cursor.getCount() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getQmodeTimeUpdate(JJ)Z

    .line 588
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 598
    .end local v7           #i:I
    :cond_2
    if-eqz p3, :cond_3

    .line 599
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 602
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 603
    .local v5, currentMillis:J
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getDBStartTime(Landroid/content/Context;)J
    invoke-static {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->access$200(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/content/Context;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    invoke-virtual {v4}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->getDBEndTime(Landroid/content/Context;)J
    invoke-static {v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->access$300(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/content/Context;)J

    move-result-wide v3

    #calls: Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->isCurrentTimeIncluded(JJJ)Z
    invoke-static/range {v0 .. v6}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->access$400(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;JJJ)Z

    move-result v0

    if-ne v0, v8, :cond_4

    .line 604
    const-string v0, "TAG"

    const-string v1, " Quiet Mode State ON "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    :cond_4
    const-string v0, "TAG"

    const-string v1, " Quiet Mode State OFF "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
