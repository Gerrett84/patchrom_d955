.class Lcom/android/lgesettings/RcseSettings$2;
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
    .line 329
    iput-object p1, p0, Lcom/android/lgesettings/RcseSettings$2;->this$0:Lcom/android/lgesettings/RcseSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 332
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings$2;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->temp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/RcseSettings;->access$000(Lcom/android/lgesettings/RcseSettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    const-string v1, "joynSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intentinfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/RcseSettings$2;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->temp:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/RcseSettings;->access$000(Lcom/android/lgesettings/RcseSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings$2;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->temp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/RcseSettings;->access$000(Lcom/android/lgesettings/RcseSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings$2;->this$0:Lcom/android/lgesettings/RcseSettings;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/RcseSettings;->startActivity(Landroid/content/Intent;)V

    .line 337
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings$2;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/RcseSettings;->access$100(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 338
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings$2;->this$0:Lcom/android/lgesettings/RcseSettings;

    const-string v2, "rcs_e_service"

    #calls: Lcom/android/lgesettings/RcseSettings;->writeDB(Ljava/lang/String;I)V
    invoke-static {v1, v2, v4}, Lcom/android/lgesettings/RcseSettings;->access$200(Lcom/android/lgesettings/RcseSettings;Ljava/lang/String;I)V

    .line 339
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings$2;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/lgesettings/RcseSettings;->access$300(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 340
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings$2;->this$0:Lcom/android/lgesettings/RcseSettings;

    #getter for: Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/RcseSettings;->access$400(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 341
    return-void
.end method
