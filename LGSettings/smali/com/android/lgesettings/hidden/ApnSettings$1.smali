.class Lcom/android/lgesettings/hidden/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/hidden/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/hidden/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/hidden/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/lgesettings/hidden/ApnSettings$1;->this$0:Lcom/android/lgesettings/hidden/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    #calls: Lcom/android/lgesettings/hidden/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/android/lgesettings/hidden/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    .line 123
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v4, Lcom/android/lgesettings/hidden/ApnSettings$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 158
    .end local v3           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v3       #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :pswitch_0
    invoke-static {}, Lcom/android/lgesettings/hidden/ApnSettings;->access$100()Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnSettings$1;->this$0:Lcom/android/lgesettings/hidden/ApnSettings;

    #calls: Lcom/android/lgesettings/hidden/ApnSettings;->fillList()V
    invoke-static {v4}, Lcom/android/lgesettings/hidden/ApnSettings;->access$200(Lcom/android/lgesettings/hidden/ApnSettings;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnSettings$1;->this$0:Lcom/android/lgesettings/hidden/ApnSettings;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/hidden/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 136
    .end local v3           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 140
    .local v1, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    .local v0, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 145
    .local v2, erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 147
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnSettings$1;->this$0:Lcom/android/lgesettings/hidden/ApnSettings;

    const/4 v5, 0x0

    #setter for: Lcom/android/lgesettings/hidden/ApnSettings;->mTetheredSate:I
    invoke-static {v4, v5}, Lcom/android/lgesettings/hidden/ApnSettings;->access$302(Lcom/android/lgesettings/hidden/ApnSettings;I)I

    .line 155
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnSettings$1;->this$0:Lcom/android/lgesettings/hidden/ApnSettings;

    #calls: Lcom/android/lgesettings/hidden/ApnSettings;->fillList()V
    invoke-static {v4}, Lcom/android/lgesettings/hidden/ApnSettings;->access$200(Lcom/android/lgesettings/hidden/ApnSettings;)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/hidden/ApnSettings$1;->this$0:Lcom/android/lgesettings/hidden/ApnSettings;

    const/4 v5, 0x1

    #setter for: Lcom/android/lgesettings/hidden/ApnSettings;->mTetheredSate:I
    invoke-static {v4, v5}, Lcom/android/lgesettings/hidden/ApnSettings;->access$302(Lcom/android/lgesettings/hidden/ApnSettings;I)I

    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
