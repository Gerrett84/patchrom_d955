.class Lcom/android/lgesettings/RingtonePicker$7;
.super Ljava/lang/Object;
.source "RingtonePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/RingtonePicker;->do_InitCancelOkBtn(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RingtonePicker;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RingtonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v10, 0x7f080cba

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 1398
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    iget-object v3, v4, Lcom/android/lgesettings/RingtonePicker;->position_uri:Landroid/net/Uri;

    .line 1403
    .local v3, uri:Landroid/net/Uri;
    sget-boolean v4, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    #getter for: Lcom/android/lgesettings/RingtonePicker;->mDrmRingtone:Z
    invoke-static {v4}, Lcom/android/lgesettings/RingtonePicker;->access$400(Lcom/android/lgesettings/RingtonePicker;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1405
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v4}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v5, v10}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1409
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v4}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v5}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    invoke-virtual {v4, v9}, Landroid/app/Activity;->setResult(I)V

    .line 1469
    :goto_0
    return-void

    .line 1412
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1414
    .local v2, resultIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    #getter for: Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I
    invoke-static {v4}, Lcom/android/lgesettings/RingtonePicker;->access$500(Lcom/android/lgesettings/RingtonePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    #getter for: Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtonePos:I
    invoke-static {v5}, Lcom/android/lgesettings/RingtonePicker;->access$600(Lcom/android/lgesettings/RingtonePicker;)I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 1417
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    #getter for: Lcom/android/lgesettings/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/lgesettings/RingtonePicker;->access$700(Lcom/android/lgesettings/RingtonePicker;)Landroid/net/Uri;

    move-result-object v3

    .line 1452
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 1454
    const-string v4, "content://settings/system/ringtone"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1455
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    iget v4, v4, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    iget v4, v4, Lcom/android/lgesettings/RingtonePicker;->external_ringtone_position:I

    if-ne v4, v8, :cond_5

    .line 1456
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    iget-object v4, v4, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/RingtonePickerInfo;->getDefaultPhoneRingtone()Landroid/net/Uri;

    move-result-object v3

    .line 1465
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    iget-object v4, v4, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    iget v5, v5, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    invoke-virtual {v4, v3, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->do_setURI(Landroid/net/Uri;I)V

    .line 1467
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v4}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 1418
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    #getter for: Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I
    invoke-static {v4}, Lcom/android/lgesettings/RingtonePicker;->access$500(Lcom/android/lgesettings/RingtonePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    #getter for: Lcom/android/lgesettings/RingtonePicker;->mSilentPos:I
    invoke-static {v5}, Lcom/android/lgesettings/RingtonePicker;->access$800(Lcom/android/lgesettings/RingtonePicker;)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 1420
    const/4 v3, 0x0

    goto :goto_1

    .line 1422
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    iget-object v3, v4, Lcom/android/lgesettings/RingtonePicker;->position_uri:Landroid/net/Uri;

    .line 1425
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    iget-object v4, v4, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/RingtonePickerInfo;->GetFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1427
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1428
    const-string v4, "RingToneTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onClick] uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    iget-object v4, v4, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v4, v1}, Lcom/android/lgesettings/RingtonePickerInfo;->checkDRM(Ljava/lang/String;)I

    move-result v0

    .line 1432
    .local v0, nStatus:I
    if-ne v0, v7, :cond_1

    .line 1433
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    #setter for: Lcom/android/lgesettings/RingtonePicker;->mDrmRingtone:Z
    invoke-static {v4, v9}, Lcom/android/lgesettings/RingtonePicker;->access$402(Lcom/android/lgesettings/RingtonePicker;Z)Z

    .line 1434
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v4}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v5, v10}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1439
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    #getter for: Lcom/android/lgesettings/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/lgesettings/RingtonePicker;->access$700(Lcom/android/lgesettings/RingtonePicker;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_1

    .line 1459
    .end local v0           #nStatus:I
    .end local v1           #path:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker$7;->this$0:Lcom/android/lgesettings/RingtonePicker;

    iget-object v4, v4, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/RingtonePickerInfo;->getURI()Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_2
.end method
