.class public Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;
.super Landroid/preference/Preference;
.source "PowerSaveBatteryPreference2.java"


# instance fields
.field private chart2:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

.field private hScrollView:Landroid/widget/HorizontalScrollView;

.field private imageView:Landroid/widget/ImageView;

.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 1
    .parameter "context"
    .parameter "stats"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    const v0, 0x7f0400de

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->setLayoutResource(I)V

    .line 50
    iput-object p2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->mStats:Landroid/os/BatteryStats;

    .line 51
    return-void
.end method


# virtual methods
.method public getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->chart2:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    return-object v0
.end method

.method public getHorizontalScrollView()Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->hScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const-string v1, "PowerSaveBatteryPreference2"

    const-string v2, "onBindView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const v1, 0x7f0a01d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->hScrollView:Landroid/widget/HorizontalScrollView;

    .line 64
    const v1, 0x7f0a01d5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->chart2:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    .line 66
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->chart2:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->setStats(Landroid/os/BatteryStats;)V

    .line 68
    const v1, 0x7f0a01d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->imageView:Landroid/widget/ImageView;

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
