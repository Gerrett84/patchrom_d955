.class Lcom/android/lgesettings/lge/UsbTethering$2;
.super Ljava/lang/Object;
.source "UsbTethering.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/UsbTethering;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/UsbTethering;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/UsbTethering;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/lgesettings/lge/UsbTethering$2;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/lgesettings/lge/UsbTethering$2;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/UsbTethering;->disableWifi()V

    .line 207
    iget-object v0, p0, Lcom/android/lgesettings/lge/UsbTethering$2;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #getter for: Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/lge/UsbTethering;->access$500(Lcom/android/lgesettings/lge/UsbTethering;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/lge/UsbTethering$2;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/lgesettings/lge/UsbTethering$2;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #getter for: Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/lge/UsbTethering;->access$500(Lcom/android/lgesettings/lge/UsbTethering;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/lge/UsbTethering;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 210
    return-void
.end method
