.class Lcom/android/lgesettings/quietmode/QuietModeSettingsService$1;
.super Landroid/database/ContentObserver;
.source "QuietModeSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 560
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->mHandlerQuietMode:Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->access$100(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;)Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v3, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->QUIET_MODE_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$QueryHandlerQuietMode;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method
