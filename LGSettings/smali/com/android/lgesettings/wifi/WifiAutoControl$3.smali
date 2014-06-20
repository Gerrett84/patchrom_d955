.class Lcom/android/lgesettings/wifi/WifiAutoControl$3;
.super Ljava/lang/Object;
.source "WifiAutoControl.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiAutoControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiAutoControl;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl$3;->this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .parameter "timePicker"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl$3;->this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;

    #setter for: Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I
    invoke-static {v0, p2}, Lcom/android/lgesettings/wifi/WifiAutoControl;->access$402(Lcom/android/lgesettings/wifi/WifiAutoControl;I)I

    .line 273
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl$3;->this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;

    #setter for: Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I
    invoke-static {v0, p3}, Lcom/android/lgesettings/wifi/WifiAutoControl;->access$502(Lcom/android/lgesettings/wifi/WifiAutoControl;I)I

    .line 275
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl$3;->this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl$3;->this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;

    #getter for: Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiAutoControl;->access$600(Lcom/android/lgesettings/wifi/WifiAutoControl;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControl$3;->this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;

    #getter for: Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiAutoControl;->access$400(Lcom/android/lgesettings/wifi/WifiAutoControl;)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl$3;->this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;

    #getter for: Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiAutoControl;->access$500(Lcom/android/lgesettings/wifi/WifiAutoControl;)I

    move-result v3

    #calls: Lcom/android/lgesettings/wifi/WifiAutoControl;->setSummaryWithTime(Landroid/preference/PreferenceScreen;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/lgesettings/wifi/WifiAutoControl;->access$300(Lcom/android/lgesettings/wifi/WifiAutoControl;Landroid/preference/PreferenceScreen;II)V

    .line 276
    return-void
.end method
