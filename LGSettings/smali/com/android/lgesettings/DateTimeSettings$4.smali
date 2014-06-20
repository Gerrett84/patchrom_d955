.class Lcom/android/lgesettings/DateTimeSettings$4;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DateTimeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/lgesettings/DateTimeSettings$4;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings$4;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skt_roaming_dualclock"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings$4;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    #getter for: Lcom/android/lgesettings/DateTimeSettings;->mDualClock:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/lgesettings/DateTimeSettings;->access$100(Lcom/android/lgesettings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DateTimeSettings$4;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    #calls: Lcom/android/lgesettings/DateTimeSettings;->getClockSummaryIndex()I
    invoke-static {v1}, Lcom/android/lgesettings/DateTimeSettings;->access$000(Lcom/android/lgesettings/DateTimeSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 532
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings$4;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DateTimeSettings$4;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    invoke-virtual {v1, p2}, Lcom/android/lgesettings/DateTimeSettings;->getCompleteString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 533
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 534
    return-void
.end method
