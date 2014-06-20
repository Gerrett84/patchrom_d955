.class public Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference;
.super Landroid/preference/Preference;
.source "PowerSaveBatteryPreference.java"


# instance fields
.field private mStats:Landroid/os/BatteryStats;


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 52
    const v1, 0x7f0a01d5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;

    .line 54
    .local v0, chart:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->setStats(Landroid/os/BatteryStats;)V

    .line 55
    return-void
.end method
