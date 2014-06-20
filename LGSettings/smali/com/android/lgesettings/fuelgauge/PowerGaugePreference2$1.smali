.class Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$1;
.super Ljava/lang/Object;
.source "PowerGaugePreference2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    #calls: Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->killProcesses()V
    invoke-static {v0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->access$000(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)V

    .line 126
    return-void
.end method
