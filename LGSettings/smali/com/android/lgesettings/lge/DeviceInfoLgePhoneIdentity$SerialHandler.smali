.class public Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;
.super Landroid/os/Handler;
.source "DeviceInfoLgePhoneIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SerialHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;


# direct methods
.method protected constructor <init>(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 118
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 119
    .local v0, ar:Landroid/os/AsyncResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v1, m_sbPhoneSerial:Ljava/lang/StringBuilder;
    const-string v2, "starmotor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.result 1= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;

    const-string v3, "serial_number"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->access$100(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;

    const-string v3, "manufacture_serial_number_date"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->access$100(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;

    const-string v3, "manufacture_serial_number"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->access$100(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
