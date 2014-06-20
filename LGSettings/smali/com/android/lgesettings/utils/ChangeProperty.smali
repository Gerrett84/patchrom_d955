.class public Lcom/android/lgesettings/utils/ChangeProperty;
.super Landroid/app/Activity;
.source "ChangeProperty.java"


# instance fields
.field arraylist_country:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field arraylist_oper:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mChange:Landroid/widget/Button;

.field mChangedText:Landroid/widget/TextView;

.field mCountry:Landroid/widget/Spinner;

.field mOperator:Landroid/widget/Spinner;

.field setting_country:Ljava/lang/String;

.field setting_operator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x1090009

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v2, 0x7f04002c

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/utils/ChangeProperty;->setContentView(I)V

    .line 34
    const v2, 0x7f0a0058

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/utils/ChangeProperty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mCountry:Landroid/widget/Spinner;

    .line 35
    const v2, 0x7f0a0059

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/utils/ChangeProperty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mOperator:Landroid/widget/Spinner;

    .line 36
    const v2, 0x7f0a005a

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/utils/ChangeProperty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mChange:Landroid/widget/Button;

    .line 37
    const v2, 0x7f0a005b

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/utils/ChangeProperty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mChangedText:Landroid/widget/TextView;

    .line 38
    const-string v2, ""

    iput-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->setting_country:Ljava/lang/String;

    .line 39
    const-string v2, ""

    iput-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->setting_operator:Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    .line 42
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "KR"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "JP"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "MX"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "ES"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "FR"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "HK"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "TW"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    const-string v3, "NZ"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    .line 56
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "SKT"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "KT"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "ATT"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "DCM"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "MPCS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "SPR"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "TCL"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "TLS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "BELL"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "USC"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    const-string v3, "VDF"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_country:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 74
    .local v0, adapter_country:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->arraylist_oper:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 76
    .local v1, adapter_oper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mCountry:Landroid/widget/Spinner;

    const-string v3, "Select country"

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mCountry:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 78
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mCountry:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/lgesettings/utils/ChangeProperty$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/utils/ChangeProperty$1;-><init>(Lcom/android/lgesettings/utils/ChangeProperty;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 94
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mOperator:Landroid/widget/Spinner;

    const-string v3, "Select operator"

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mOperator:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 96
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mOperator:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/lgesettings/utils/ChangeProperty$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/utils/ChangeProperty$2;-><init>(Lcom/android/lgesettings/utils/ChangeProperty;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 112
    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty;->mChange:Landroid/widget/Button;

    new-instance v3, Lcom/android/lgesettings/utils/ChangeProperty$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/utils/ChangeProperty$3;-><init>(Lcom/android/lgesettings/utils/ChangeProperty;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method
