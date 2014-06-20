.class Lcom/android/lgesettings/DevelopmentSettings$3;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DevelopmentSettings;->showEnteringDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DevelopmentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/android/lgesettings/DevelopmentSettings$3;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/lgesettings/DevelopmentSettings$3;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->visible:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/lgesettings/DevelopmentSettings;->access$700(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/lgesettings/DevelopmentSettings$3;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DEVELOPER_DO_NOT_SHOW"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1617
    :cond_0
    return-void
.end method
