.class Lcom/android/lgesettings/DataUsageSummary$8;
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
    .line 1606
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$8;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1611
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 1612
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$8;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$1300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$8;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$1300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setSoundEffectsEnabled(Z)V

    .line 1620
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$8;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$1300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->performClick()Z

    .line 1621
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$8;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$1300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setSoundEffectsEnabled(Z)V

    goto :goto_0
.end method
