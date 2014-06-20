.class Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;
.super Ljava/lang/Object;
.source "LGBluetoothTetheringHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 98
    .local v1, view:I
    const v2, 0x7f0a0041

    if-ne v1, v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 100
    .local v0, cur:I
    const-string v2, "LGBluetoothTetheringHelp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGBluetoothTetheringHelpGuide onClick btnBack cur : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-lez v0, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->isAnimated:Z
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 116
    .end local v0           #cur:I
    :cond_0
    :goto_0
    return-void

    .line 104
    .restart local v0       #cur:I
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->finish()V

    goto :goto_0

    .line 107
    .end local v0           #cur:I
    :cond_2
    const v2, 0x7f0a0042

    if-eq v1, v2, :cond_3

    const v2, 0x7f0a003f

    if-ne v1, v2, :cond_0

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 109
    .restart local v0       #cur:I
    const-string v2, "LGBluetoothTetheringHelp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGBluetoothTetheringHelpGuide onClick btnNext cur : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->Page_Count:I
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 111
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->isAnimated:Z
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 113
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->finish()V

    goto :goto_0
.end method
