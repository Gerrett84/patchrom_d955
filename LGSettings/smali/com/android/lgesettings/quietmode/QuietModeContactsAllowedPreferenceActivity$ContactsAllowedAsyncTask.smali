.class Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;
.super Landroid/os/AsyncTask;
.source "QuietModeContactsAllowedPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsAllowedAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private AddedExistedNumber:I

.field private isNotSupportNumber:Z

.field private mCondition:[J

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mId:[J

.field private mName:[Ljava/lang/String;

.field private mNumber:[Ljava/lang/String;

.field private mPd:Landroid/app/ProgressDialog;

.field private mflag:I

.field private resultOfAddlist:I

.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J[JLandroid/os/Handler;I)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "number"
    .parameter "name"
    .parameter "id"
    .parameter "condition"
    .parameter "h"
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 928
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 921
    iput v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->AddedExistedNumber:I

    .line 922
    iput v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->resultOfAddlist:I

    .line 923
    iput-boolean v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->isNotSupportNumber:Z

    .line 929
    iput-object p2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mContext:Landroid/content/Context;

    .line 930
    iput-object p7, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mHandler:Landroid/os/Handler;

    .line 931
    iput-object p3, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mNumber:[Ljava/lang/String;

    .line 932
    iput-object p4, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mName:[Ljava/lang/String;

    .line 933
    iput-object p5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mId:[J

    .line 934
    iput-object p6, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mCondition:[J

    .line 935
    iput p8, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mflag:I

    .line 937
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    .line 938
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 940
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 941
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 942
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 950
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    const v1, 0x7f080528

    invoke-virtual {p1, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 952
    :cond_0
    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 911
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 964
    const/4 v0, 0x0

    .line 965
    .local v0, count:I
    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mNumber:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_6

    .line 967
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mNumber:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mNumber:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    if-nez v5, :cond_1

    .line 968
    :cond_0
    const-string v5, "soosin"

    const-string v6, "cancel!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-virtual {p0, v9}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->cancel(Z)Z

    .line 1037
    :goto_1
    return-object v12

    .line 973
    :cond_1
    const-string v3, ""

    .line 974
    .local v3, number:Ljava/lang/String;
    const/4 v2, 0x0

    .line 976
    .local v2, formattedNumber:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mNumber:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 982
    if-eqz v3, :cond_2

    .line 983
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-virtual {v5}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/quietmode/PhoneNumberFormatter;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 987
    :cond_2
    if-eqz v2, :cond_4

    .line 988
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 989
    :cond_3
    iput-boolean v9, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->isNotSupportNumber:Z

    .line 965
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    :catch_0
    move-exception v1

    .line 978
    .local v1, e:Ljava/lang/NullPointerException;
    iput-boolean v9, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->isNotSupportNumber:Z

    goto :goto_2

    .line 993
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_4
    iput-boolean v9, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->isNotSupportNumber:Z

    goto :goto_2

    .line 996
    :cond_5
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->checkMaxAllowedNumber()Z
    invoke-static {v5}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$800(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1023
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->checkMaxAllowedNumber()Z
    invoke-static {v5}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$800(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)Z

    move-result v5

    if-ne v5, v9, :cond_c

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->allowedCallCount()I
    invoke-static {v5}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$1000(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)I

    move-result v5

    const/16 v6, 0x65

    if-lt v5, v6, :cond_c

    .line 1024
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->resultOfAddlist:I

    .line 1036
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->startQuery()V
    invoke-static {v5}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$1100(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V

    goto :goto_1

    .line 999
    .restart local v2       #formattedNumber:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isExistContactsNumber(Ljava/lang/String;I)Z
    invoke-static {v5, v3, v10}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$900(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1000
    iget v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->AddedExistedNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->AddedExistedNumber:I

    goto :goto_2

    .line 1004
    :cond_9
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1005
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "number"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mflag:I

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mflag:I

    if-eq v5, v9, :cond_a

    iget v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mflag:I

    if-ne v5, v11, :cond_b

    .line 1009
    :cond_a
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mNumber:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->setDBcontactsAllowedNumber([Ljava/lang/String;)V

    .line 1010
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mName:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->setDBcontactsAllowedName([Ljava/lang/String;)V

    .line 1011
    const-string v5, "soosin"

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mNumber:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v5, "name"

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mName:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v5, "soosin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doInBackground(), mId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mId:[J

    aget-wide v7, v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const-string v5, "contact_id"

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mId:[J

    aget-wide v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1020
    :cond_b
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v7, v4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    .line 1025
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_c
    iget-boolean v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->isNotSupportNumber:Z

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->AddedExistedNumber:I

    if-nez v5, :cond_d

    .line 1026
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->resultOfAddlist:I

    goto/16 :goto_3

    .line 1027
    :cond_d
    iget-boolean v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->isNotSupportNumber:Z

    if-eqz v5, :cond_e

    iget v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->AddedExistedNumber:I

    if-ge v5, v0, :cond_e

    .line 1028
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->resultOfAddlist:I

    goto/16 :goto_3

    .line 1029
    :cond_e
    iget-boolean v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->isNotSupportNumber:Z

    if-nez v5, :cond_f

    iget v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->AddedExistedNumber:I

    if-nez v5, :cond_f

    .line 1030
    iput v10, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->resultOfAddlist:I

    goto/16 :goto_3

    .line 1031
    :cond_f
    iget-boolean v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->isNotSupportNumber:Z

    if-nez v5, :cond_10

    iget v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->AddedExistedNumber:I

    if-ge v5, v0, :cond_10

    .line 1032
    iput v11, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->resultOfAddlist:I

    goto/16 :goto_3

    .line 1033
    :cond_10
    iget-boolean v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->isNotSupportNumber:Z

    if-nez v5, :cond_7

    iget v5, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->AddedExistedNumber:I

    if-ne v5, v0, :cond_7

    .line 1034
    iput v9, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->resultOfAddlist:I

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 911
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1042
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1043
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1044
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1046
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    .line 1048
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1049
    iget v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->resultOfAddlist:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1050
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1051
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 956
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 957
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedAsyncTask;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 960
    :cond_0
    return-void
.end method
