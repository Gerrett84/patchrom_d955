.class Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$4;
.super Landroid/os/Handler;
.source "PowerSaveBatteryDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;
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
    .line 1328
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$4;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1332
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1345
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1346
    return-void

    .line 1334
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;

    .line 1335
    .local v0, bs:Lcom/android/lgesettings/fuelgauge/BatterySipper;
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$4;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    iget-object v3, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    .line 1338
    .local v1, pgp:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;
    if-eqz v1, :cond_0

    .line 1339
    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1341
    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
