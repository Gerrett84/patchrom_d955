.class Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataCount:I

.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    .line 95
    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {p1}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    .line 96
    return-void
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, children:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 171
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 172
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 173
    .local v2, success:Z
    if-nez v2, :cond_0

    .line 174
    const/4 v3, 0x0

    .line 181
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :goto_1
    return v3

    .line 171
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #success:Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v12

    .line 110
    .local v12, lv:Landroid/widget/ListView;
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 113
    :pswitch_0
    invoke-virtual {v12}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 114
    .local v7, checkedItems:Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v6

    .line 115
    .local v6, checkedCount:I
    iget v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-le v6, v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checked item counts do not match. checkedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dataSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-lez v0, :cond_5

    .line 120
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v13, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    iget v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v11, v0, :cond_4

    .line 122
    invoke-virtual {v7, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 126
    :cond_1
    sget-boolean v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v0, :cond_2

    .line 127
    const-string v0, "MemorySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/lgesettings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    new-instance v10, Ljava/io/File;

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/lgesettings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    invoke-direct {p0, v10}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    .line 136
    :goto_3
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/lgesettings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 138
    .end local v10           #file:Ljava/io/File;
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->removeAll(Ljava/util/List;)V

    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 140
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    .line 141
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    .line 142
    .local v9, currentUser:I
    new-instance v8, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v8, v9}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 143
    .local v8, currentEnv:Landroid/os/Environment$UserEnvironment;
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    .end local v8           #currentEnv:Landroid/os/Environment$UserEnvironment;
    .end local v9           #currentUser:I
    .end local v11           #i:I
    .end local v13           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 151
    .end local v6           #checkedCount:I
    .end local v7           #checkedItems:Landroid/util/SparseBooleanArray;
    :pswitch_1
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_4
    iget v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v11, v0, :cond_7

    .line 152
    if-nez v11, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 154
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v12, v11, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_5

    .line 157
    :cond_7
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto/16 :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x7f0a048b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 100
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f110001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 101
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 186
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 12
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 190
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v6}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 191
    .local v2, lv:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    .line 192
    .local v3, numChecked:I
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v9}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 196
    .local v0, checkedItems:Landroid/util/SparseBooleanArray;
    const-wide/16 v4, 0x0

    .line 197
    .local v4, selectedDataSize:J
    if-lez v3, :cond_1

    .line 198
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v1, v6, :cond_1

    .line 199
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v6}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/lgesettings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    add-long/2addr v4, v6

    .line 198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v1           #i:I
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$200(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v10}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getDataSize()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
