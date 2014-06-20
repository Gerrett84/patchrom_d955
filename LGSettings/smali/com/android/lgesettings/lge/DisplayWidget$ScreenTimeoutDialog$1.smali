.class Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog$1;
.super Ljava/lang/Object;
.source "DisplayWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->createTimeoutList(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 360
    iget-object v2, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;

    #getter for: Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedValues:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->access$400(Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 362
    .local v1, value:I
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;

    #getter for: Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->access$500(Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 370
    iget-object v2, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;

    invoke-virtual {v2}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 371
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "ScreenTimeoutDialog"

    const-string v3, "could not persist screen timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
