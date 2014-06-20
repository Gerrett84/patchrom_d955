.class Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$2;
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
    .line 134
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mTreeClickListener:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;
    invoke-static {v0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->access$100(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$2;->this$0:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    invoke-interface {v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;->onTreeClick(Landroid/preference/Preference;)V

    .line 139
    return-void
.end method
