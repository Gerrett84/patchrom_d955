.class Lcom/android/lgesettings/DataUsageSummary$10;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$10;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1652
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1666
    :goto_0
    return-void

    .line 1656
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$10;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->access$1900(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1658
    .local v0, restrictBackground:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1662
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$10;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    goto :goto_0

    .end local v0           #restrictBackground:Z
    :cond_1
    move v0, v1

    .line 1656
    goto :goto_1

    .line 1664
    .restart local v0       #restrictBackground:Z
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$10;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/lgesettings/DataUsageSummary;->access$2000(Lcom/android/lgesettings/DataUsageSummary;Z)V

    goto :goto_0
.end method
