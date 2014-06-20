.class Lcom/lguplus/ho_client_impl/Settings$2;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/ho_client_impl/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lguplus/ho_client_impl/Settings;


# direct methods
.method constructor <init>(Lcom/lguplus/ho_client_impl/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/lguplus/ho_client_impl/Settings$2;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 384
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 387
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 388
    .local v0, isEnabled:Z
    :goto_1
    iget-object v2, p0, Lcom/lguplus/ho_client_impl/Settings$2;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lguplus/ho_client_impl/Settings;->switchPrefEnabled:Z

    .line 389
    iget-object v2, p0, Lcom/lguplus/ho_client_impl/Settings$2;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    iget-object v2, v2, Lcom/lguplus/ho_client_impl/Settings;->pc:Landroid/preference/PreferenceCategory;

    const-string v3, "lgupho_enabled"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;

    .line 390
    .local v1, p:Lcom/lguplus/ho_client_impl/CustomSwitchPreference;
    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v1, v0}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;->setChecked(Z)V

    .line 392
    iget-object v2, p0, Lcom/lguplus/ho_client_impl/Settings$2;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    iget-boolean v2, v2, Lcom/lguplus/ho_client_impl/Settings;->switchPrefEnabled:Z

    invoke-virtual {v1, v2}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 387
    .end local v0           #isEnabled:Z
    .end local v1           #p:Lcom/lguplus/ho_client_impl/CustomSwitchPreference;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 384
    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_0
    .end packed-switch
.end method
