.class public LX/3Ht;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements LX/2vj;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Ljava/lang/Object;

.field public A03:Ljava/util/ArrayList;

.field public final A04:LX/181;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, LX/181;->A00()LX/181;

    move-result-object v0

    iput-object v0, p0, LX/3Ht;->A04:LX/181;

    return-void
.end method


# virtual methods
.method public A00(Ljava/util/ArrayList;LX/2vp;)V
    .locals 3

    iput-object p1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    iput-object p2, v0, LX/3Hv;->A0B:LX/2vp;

    iput v1, p0, LX/3Ht;->A00:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, LX/3Ht;->A01:I

    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/3Hv;

    iput-object p2, v1, LX/3Hv;->A0B:LX/2vp;

    iget v0, p0, LX/3Ht;->A01:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public A3q()Z
    .locals 6

    iget-object v1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    iget v0, p0, LX/3Ht;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, LX/3Hv;->getInputValue()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    iget v0, p0, LX/3Ht;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    iget v1, v0, LX/3Hv;->A00:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v0, :cond_6

    iget v1, p0, LX/3Ht;->A00:I

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ne v1, v0, :cond_4

    iget-object v1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    iget v0, p0, LX/3Ht;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, LX/3Hv;->getInputValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/3Hv;

    const-string v0, ""

    invoke-virtual {v1, v0}, LX/3Hv;->setText(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, LX/3Ht;->A00:I

    if-eqz v1, :cond_2

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/3Hv;

    iget v0, p0, LX/3Ht;->A01:I

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    iget v0, p0, LX/3Ht;->A00:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    iget v0, p0, LX/3Ht;->A00:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, LX/3Ht;->A00:I

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_2
    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    iget-object v2, v0, LX/3Hv;->A0B:LX/2vp;

    iget-object v1, p0, LX/3Ht;->A04:LX/181;

    const v0, 0x7f1106fc

    invoke-virtual {v1, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p0, v0}, LX/2vp;->ACl(Landroid/view/View;Ljava/lang/String;)V

    return v5

    :cond_3
    return v3

    :cond_4
    iget v1, p0, LX/3Ht;->A00:I

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_5

    iget-object v1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    iget v0, p0, LX/3Ht;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/3Hv;

    iget v0, p0, LX/3Ht;->A01:I

    neg-int v0, v0

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    iget v0, p0, LX/3Ht;->A00:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    iget v1, p0, LX/3Ht;->A00:I

    add-int/2addr v1, v3

    iput v1, p0, LX/3Ht;->A00:I

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    const/4 v5, 0x1

    :cond_5
    xor-int/lit8 v0, v5, 0x1

    return v0

    :cond_6
    iget-object v1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    iget v0, p0, LX/3Ht;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return v5
.end method

.method public AKj(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZZ)V
    .locals 9

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/3Hv;

    move v8, p6

    move v7, p5

    move v6, p4

    move-object v5, p3

    move-object v4, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, LX/3Hv;->AKj(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public AKk()Z
    .locals 2

    iget-object v1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    iget v0, p0, LX/3Ht;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, LX/3Hv;->AKk()Z

    move-result v0

    return v0
.end method

.method public getFormDataTag()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LX/3Ht;->A02:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, LX/3Hv;->getFormDataTag()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInputValue()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0}, LX/3Hv;->getInputValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFormDataTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LX/3Ht;->A02:Ljava/lang/Object;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, LX/3Ht;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/3Hv;

    invoke-virtual {v0, p1}, LX/3Hv;->setText(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
