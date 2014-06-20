.class Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/ho_client_impl/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendIntentToPkgL"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field clsName:Ljava/lang/String;

.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/lguplus/ho_client_impl/Settings;


# direct methods
.method constructor <init>(Lcom/lguplus/ho_client_impl/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "action_"
    .parameter "clsName_"
    .parameter "key_"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->action:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->clsName:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->key:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "p"
    .parameter "v"

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, isChecked:Z
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 129
    .local v1, newValue:Z
    instance-of v2, p1, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;

    invoke-virtual {v2}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;->isChecked()Z

    move-result v0

    .line 131
    :cond_0
    :goto_0
    if-eq v0, v1, :cond_1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lguplus/ho_client_impl/Settings;->loge(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->action:Ljava/lang/String;

    iget-object v4, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->clsName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/lguplus/ho_client_impl/Settings;->sendIntentToPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 130
    :cond_2
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "p"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    iget-object v2, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->clsName:Ljava/lang/String;

    iget-object v0, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;->key:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/lguplus/ho_client_impl/Settings;->sendIntentToPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
