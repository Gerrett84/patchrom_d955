.class Lcom/android/lgesettings/RcseSettings$3;
.super Ljava/lang/Object;
.source "RcseSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 344
    iput-object p1, p0, Lcom/android/lgesettings/RcseSettings$3;->this$0:Lcom/android/lgesettings/RcseSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings$3;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/RcseSettings;->access$100(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings$3;->this$0:Lcom/android/lgesettings/RcseSettings;

    const-string v1, "rcs_e_service"

    #calls: Lcom/android/lgesettings/RcseSettings;->writeDB(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/RcseSettings;->access$200(Lcom/android/lgesettings/RcseSettings;Ljava/lang/String;I)V

    .line 348
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings$3;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/RcseSettings;->access$400(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings$3;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/lgesettings/RcseSettings;->access$300(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 350
    return-void
.end method
