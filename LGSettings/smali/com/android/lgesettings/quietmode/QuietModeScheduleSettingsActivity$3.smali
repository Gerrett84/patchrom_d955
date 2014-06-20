.class Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$3;
.super Ljava/lang/Object;
.source "QuietModeScheduleSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->ShowWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->donotshow:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$600(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->setDBNotiShow(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$700(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;Z)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->setDBNotiShow(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$700(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;Z)V

    goto :goto_0
.end method
