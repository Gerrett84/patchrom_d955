.class Lcom/android/lgesettings/RcseSettings$4;
.super Ljava/lang/Object;
.source "RcseSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/RcseSettings;->rcs_e_multiclient_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RcseSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RcseSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/lgesettings/RcseSettings$4;->this$0:Lcom/android/lgesettings/RcseSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 357
    packed-switch p2, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    return v2

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings$4;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/RcseSettings;->access$100(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings$4;->this$0:Lcom/android/lgesettings/RcseSettings;

    const-string v1, "rcs_e_service"

    #calls: Lcom/android/lgesettings/RcseSettings;->writeDB(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/RcseSettings;->access$200(Lcom/android/lgesettings/RcseSettings;Ljava/lang/String;I)V

    .line 362
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings$4;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/RcseSettings;->access$400(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings$4;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/lgesettings/RcseSettings;->access$300(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
