.class Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity$1;
.super Landroid/os/Handler;
.source "QuietModeAllowedCallSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->updateContactsAllowedSummary(Landroid/database/Cursor;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->access$000(Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;Landroid/database/Cursor;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
