.class Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;
.super Ljava/lang/Object;
.source "PowerSaveBatteryDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->refreshInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 704
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;
    invoke-static {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$500(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getScrollPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;
    invoke-static {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$500(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->onRotation:Z
    invoke-static {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$600(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;
    invoke-static {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$500(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-static {}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$700()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 707
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #setter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->onRotation:Z
    invoke-static {v0, v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$602(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;Z)Z

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;
    invoke-static {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$500(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;
    invoke-static {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$500(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getScrollPosition()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method
