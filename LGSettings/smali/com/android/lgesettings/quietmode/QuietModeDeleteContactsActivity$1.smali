.class Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;
.super Landroid/os/Handler;
.source "QuietModeDeleteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 129
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_2

    .line 130
    const-string v1, "QuietModeDeleteContactsActivity"

    const-string v2, "UPDATE_VIEW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$000(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$000(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iput v2, v1, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    .line 137
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCompleteRead:Z
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const-string v1, "QuietModeDeleteContactsActivity"

    const-string v2, "initialize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    new-array v2, v2, [I

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I
    invoke-static {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$202(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;[I)[I

    .line 142
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget v2, v2, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    new-array v2, v2, [Z

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z
    invoke-static {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$302(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;[Z)[Z

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    iget v1, v1, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mListViewCount:I

    if-ge v0, v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->deleteItemArray:[I
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[I

    move-result-object v1

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 145
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCheckItemId:[Z
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->finish()V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mCompleteRead:Z
    invoke-static {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$102(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;Z)Z

    .line 150
    :cond_2
    return-void
.end method
