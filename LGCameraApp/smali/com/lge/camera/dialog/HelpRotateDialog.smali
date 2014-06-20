.class public Lcom/lge/camera/dialog/HelpRotateDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "HelpRotateDialog.java"


# instance fields
.field protected mDoNotShowAgain:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 36
    sget-boolean v0, Lcom/lge/camera/properties/CameraConstants;->HELP_GUIDE_DEFAULT_CHECKED:Z

    iput-boolean v0, p0, Lcom/lge/camera/dialog/HelpRotateDialog;->mDoNotShowAgain:Z

    .line 40
    return-void
.end method


# virtual methods
.method public create(ZI)V
    .locals 10
    .parameter "useCheckBox"
    .parameter "dialogId"

    .prologue
    const/4 v9, 0x0

    .line 43
    iget-object v7, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->inflateHelpDialogView()Landroid/view/View;

    move-result-object v5

    .line 47
    .local v5, rotateHelpView:Landroid/view/View;
    const v7, 0x7f0900b6

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 48
    .local v6, titleText:Landroid/widget/TextView;
    const v7, 0x7f090184

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    .local v1, contentTitleText:Landroid/widget/TextView;
    const v7, 0x7f0900bd

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 50
    .local v4, messageText:Landroid/widget/TextView;
    const v7, 0x7f0900b9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 51
    .local v3, messageImage:Landroid/widget/ImageView;
    const v7, 0x7f0900c0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, btnOk:Landroid/widget/Button;
    iget-object v7, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    invoke-static {p2, v7}, Lcom/lge/camera/util/DialogCreater;->getHelpItemResources(II)[I

    move-result-object v2

    .line 54
    .local v2, helpResources:[I
    aget v7, v2, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 55
    aget v7, v2, v9

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 56
    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 57
    const/4 v7, 0x2

    aget v7, v2, v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-virtual {p0, v5}, Lcom/lge/camera/dialog/HelpRotateDialog;->setExtraContents(Landroid/view/View;)V

    .line 61
    const v7, 0x7f0b002e

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 62
    invoke-virtual {p0, v5, p1}, Lcom/lge/camera/dialog/HelpRotateDialog;->setCheckBox(Landroid/view/View;Z)V

    .line 63
    invoke-super {p0, v5}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 64
    invoke-static {p2}, Lcom/lge/camera/util/DialogCreater;->getHelpDialogKeyValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0, p1, v7}, Lcom/lge/camera/dialog/HelpRotateDialog;->setPositiveButtonListener(Landroid/widget/Button;ZLjava/lang/String;)V

    .line 65
    return-void
.end method

.method protected getHorizontalHelpDialogWidth()I
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/DialogCreater;->getHorizontalHelpDialogWidth(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method protected getVerticalMessageScrollWidth()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, -0x2

    return v0
.end method

.method protected inflateHelpDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f030032

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected setCheckBox(Landroid/view/View;Z)V
    .locals 2
    .parameter "rotateHelpView"
    .parameter "useCheckBox"

    .prologue
    .line 74
    const v1, 0x7f090068

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 75
    .local v0, userCheck:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 76
    if-nez p2, :cond_1

    .line 77
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const v1, 0x7f0b0223

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 80
    iget-boolean v1, p0, Lcom/lge/camera/dialog/HelpRotateDialog;->mDoNotShowAgain:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    new-instance v1, Lcom/lge/camera/dialog/HelpRotateDialog$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/dialog/HelpRotateDialog$1;-><init>(Lcom/lge/camera/dialog/HelpRotateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    new-instance v1, Lcom/lge/camera/dialog/HelpRotateDialog$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/dialog/HelpRotateDialog$2;-><init>(Lcom/lge/camera/dialog/HelpRotateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected setExtraContents(Landroid/view/View;)V
    .locals 0
    .parameter "rotateHelpView"

    .prologue
    .line 71
    return-void
.end method

.method protected setPositiveButtonListener(Landroid/widget/Button;ZLjava/lang/String;)V
    .locals 1
    .parameter "btnOk"
    .parameter "useCheckBox"
    .parameter "helpKeyString"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/lge/camera/dialog/HelpRotateDialog$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/lge/camera/dialog/HelpRotateDialog$3;-><init>(Lcom/lge/camera/dialog/HelpRotateDialog;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startRotation(I)V
    .locals 23
    .parameter "degree"

    .prologue
    .line 122
    const-string v20, "CameraApp"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RotatableDialog startRotataion(degree) start = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f09015d

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mOrientation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 130
    const-string v20, "CameraApp"

    const-string v21, "RotatableDialog startRotataion : rotate same."

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 137
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/dialog/RotateDialog;->mOrientation:I

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->hideRotateDialogAnimation()V

    .line 140
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f09015c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 142
    .local v7, marginLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    .local v8, marginParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v8}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0a001d

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    .line 145
    .local v15, naviMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 146
    const/16 v20, 0x9

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 147
    iput v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 152
    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .end local v7           #marginLayout:Landroid/widget/RelativeLayout;
    .end local v8           #marginParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15           #naviMargin:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f09015d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lge/camera/components/RotateLayout;

    .line 156
    .local v16, rotateDialogView:Lcom/lge/camera/components/RotateLayout;
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f090184

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 159
    .local v5, contentTitleText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0900bb

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ScrollView;

    .line 160
    .local v12, messageScroll:Landroid/widget/ScrollView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0900b9

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 162
    .local v10, messageImage:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f090181

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 164
    .local v17, rotateInnerLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    .local v4, contentTitleParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .local v13, messageScrollParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 167
    .local v11, messageImageParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    .local v18, rotateInnerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 170
    invoke-static {v13}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 171
    invoke-static {v11}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 172
    invoke-static/range {v18 .. v18}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0xb4

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_4
    const/4 v6, 0x1

    .line 176
    .local v6, isLand:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const/high16 v21, 0x4100

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 177
    .local v9, marginValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    if-eqz v6, :cond_7

    const/high16 v20, 0x4150

    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 178
    .local v19, topValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    if-eqz v6, :cond_8

    const/high16 v20, 0x4150

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 179
    .local v3, bottomValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    if-eqz v6, :cond_9

    const/16 v20, 0x0

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 181
    .local v14, msgTopValue:I
    if-eqz v6, :cond_b

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->getHorizontalHelpDialogWidth()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 183
    const/16 v20, -0x2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v10, v9, v0, v9, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 187
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v9, v0, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 188
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    const/16 v20, 0x1

    const v21, 0x7f0900b9

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 190
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    move/from16 v0, v19

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 192
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 194
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v9, v0, v9, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 195
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    const/16 v20, 0x1

    const v21, 0x7f0900b9

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 197
    const/16 v20, 0x3

    const v21, 0x7f090184

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .end local v19           #topValue:I
    :goto_6
    move/from16 v0, v19

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 201
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 223
    :goto_7
    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    invoke-virtual {v12, v13}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->showRotateDialogAnimation()V

    .line 229
    const-string v20, "CameraApp"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RotatableDialog startRotataion(degree) end = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v3           #bottomValue:I
    .end local v4           #contentTitleParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #contentTitleText:Landroid/widget/TextView;
    .end local v6           #isLand:Z
    .end local v9           #marginValue:I
    .end local v10           #messageImage:Landroid/widget/ImageView;
    .end local v11           #messageImageParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12           #messageScroll:Landroid/widget/ScrollView;
    .end local v13           #messageScrollParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #msgTopValue:I
    .end local v16           #rotateDialogView:Lcom/lge/camera/components/RotateLayout;
    .end local v17           #rotateInnerLayout:Landroid/widget/LinearLayout;
    .end local v18           #rotateInnerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7       #marginLayout:Landroid/widget/RelativeLayout;
    .restart local v8       #marginParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v15       #naviMargin:I
    :cond_5
    const/16 v20, 0xa

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 150
    iput v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_1

    .line 174
    .end local v7           #marginLayout:Landroid/widget/RelativeLayout;
    .end local v8           #marginParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15           #naviMargin:I
    .restart local v4       #contentTitleParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5       #contentTitleText:Landroid/widget/TextView;
    .restart local v10       #messageImage:Landroid/widget/ImageView;
    .restart local v11       #messageImageParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12       #messageScroll:Landroid/widget/ScrollView;
    .restart local v13       #messageScrollParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v16       #rotateDialogView:Lcom/lge/camera/components/RotateLayout;
    .restart local v17       #rotateInnerLayout:Landroid/widget/LinearLayout;
    .restart local v18       #rotateInnerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 177
    .restart local v6       #isLand:Z
    .restart local v9       #marginValue:I
    :cond_7
    const v20, 0x411547ae

    goto/16 :goto_3

    .line 178
    .restart local v19       #topValue:I
    :cond_8
    const v20, 0x40b570a4

    goto/16 :goto_4

    .line 179
    .restart local v3       #bottomValue:I
    :cond_9
    const/high16 v20, 0x4150

    goto/16 :goto_5

    .restart local v14       #msgTopValue:I
    :cond_a
    move/from16 v19, v14

    .line 199
    goto :goto_6

    .line 203
    :cond_b
    const/16 v20, -0x2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 206
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v9, v0, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 207
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    move/from16 v0, v19

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 209
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 211
    move/from16 v0, v19

    invoke-virtual {v10, v9, v3, v9, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 212
    const/16 v20, 0x3

    const v21, 0x7f090184

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 213
    const/16 v20, 0xe

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v9, v0, v9, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 216
    const/16 v20, 0x3

    const v21, 0x7f0900b9

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 217
    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->getVerticalMessageScrollWidth()I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 219
    iput v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 221
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_7
.end method
