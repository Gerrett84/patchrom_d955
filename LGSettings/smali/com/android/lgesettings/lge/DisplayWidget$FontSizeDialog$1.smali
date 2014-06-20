.class Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;
.super Ljava/lang/Object;
.source "DisplayWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    #getter for: Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->access$200(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    #getter for: Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mValuesResourceID:I
    invoke-static {v2}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->access$100(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, values:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sync_large_text"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    const-string v1, "1.60"

    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    const-string v2, "1.30"

    #calls: Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->applyFontSize(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->access$300(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sync_large_text"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "lge.settings.intent.action.FONT_SIZE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    const-string v1, "FontSizeDialog"

    const-string v2, "Font Size send intent(lge.settings.intent.action.FONT_SIZE)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 152
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 153
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    aget-object v2, v0, p2

    #calls: Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->applyFontSize(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->access$300(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;Ljava/lang/Object;)V

    goto :goto_0
.end method
