.class public LX/3Hv;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements LX/2vj;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/Button;

.field public A03:Landroid/widget/ImageView;

.field public A04:Landroid/widget/LinearLayout;

.field public A05:Landroid/widget/ProgressBar;

.field public A06:Landroid/widget/TextView;

.field public A07:Ljava/lang/Object;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;

.field public A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

.field public A0B:LX/2vp;

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, LX/3Hv;->A0C:Z

    const-string v0, ""

    iput-object v0, p0, LX/3Hv;->A09:Ljava/lang/String;

    iput-boolean v1, p0, LX/3Hv;->A0D:Z

    sget-object v2, LX/2Pi;->A0v:[I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LX/3Hv;->A08:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v0, 0x6

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, LX/3Hv;->A00:I

    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, LX/3Hv;->A0E:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const v0, 0x7f0c01c6

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09039d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LX/3Hv;->A04:Landroid/widget/LinearLayout;

    const v0, 0x7f0903a3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LX/3Hv;->A06:Landroid/widget/TextView;

    const v0, 0x7f0903a0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/npci/commonlibrary/widget/FormItemEditText;

    iput-object v0, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    const v0, 0x7f09039e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LX/3Hv;->A02:Landroid/widget/Button;

    const v0, 0x7f0903a1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, LX/3Hv;->A05:Landroid/widget/ProgressBar;

    const v0, 0x7f09039f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LX/3Hv;->A03:Landroid/widget/ImageView;

    iget-object v0, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, LX/3Hv;->A08:Ljava/lang/String;

    invoke-virtual {p0, v0}, LX/3Hv;->setTitle(Ljava/lang/String;)V

    iget v0, p0, LX/3Hv;->A00:I

    invoke-virtual {p0, v0}, LX/3Hv;->setInputLength(I)V

    iget-object v1, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    new-instance v0, LX/3Hu;

    invoke-direct {v0, p0}, LX/3Hu;-><init>(LX/3Hv;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    new-instance v0, LX/2vi;

    invoke-direct {v0, p0}, LX/2vi;-><init>(LX/3Hv;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, LX/3Hv;->A0E:Z

    invoke-virtual {p0, v0}, LX/3Hv;->setActionBarPositionTop(Z)V

    return-void
.end method


# virtual methods
.method public final A00(Landroid/view/View;Z)LX/06m;
    .locals 4

    invoke-static {p1}, LX/06i;->A0G(Landroid/view/View;)LX/06m;

    move-result-object v3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {v3, v0}, LX/06m;->A04(F)V

    if-eqz p2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {v3, v2}, LX/06m;->A03(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, LX/06m;->A08(Landroid/view/animation/Interpolator;)V

    new-instance v0, LX/3L6;

    invoke-direct {v0, p2}, LX/3L6;-><init>(Z)V

    invoke-virtual {v3, v0}, LX/06m;->A09(LX/06n;)V

    if-nez p2, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    :cond_2
    invoke-virtual {v3, v1}, LX/06m;->A02(F)V

    return-object v3
.end method

.method public A01(Ljava/lang/String;Landroid/view/View$OnClickListener;ZZ)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LX/3Hv;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, LX/3Hv;->A02:Landroid/widget/Button;

    invoke-virtual {p0, v0, p3}, LX/3Hv;->A00(Landroid/view/View;Z)LX/06m;

    iget-object v0, p0, LX/3Hv;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, LX/3Hv;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public A02(Z)V
    .locals 2

    iget-object v0, p0, LX/3Hv;->A05:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, p1}, LX/3Hv;->A00(Landroid/view/View;Z)LX/06m;

    move-result-object v1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, LX/06m;->A08(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1}, LX/06m;->A01()V

    return-void
.end method

.method public A3q()Z
    .locals 1

    iget-object v0, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x1

    return v0
.end method

.method public AKj(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZZ)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LX/3Hv;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v5, p0, LX/3Hv;->A02:Landroid/widget/Button;

    const/4 v4, 0x0

    move-object v3, v4

    if-nez p4, :cond_1

    move-object v3, p2

    :cond_1
    const/4 v0, 0x1

    move-object v2, v4

    if-ne p4, v0, :cond_2

    move-object v2, p2

    :cond_2
    const/4 v0, 0x2

    move-object v1, v4

    if-ne p4, v0, :cond_3

    move-object v1, p2

    :cond_3
    const/4 v0, 0x3

    if-eq p4, v0, :cond_4

    move-object p2, v4

    :cond_4
    invoke-virtual {v5, v3, v2, v1, p2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, LX/3Hv;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LX/3Hv;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, LX/3Hv;->A02:Landroid/widget/Button;

    invoke-virtual {p0, v0, p5}, LX/3Hv;->A00(Landroid/view/View;Z)LX/06m;

    return-void
.end method

.method public AKk()Z
    .locals 3

    iget-boolean v0, p0, LX/3Hv;->A0D:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LX/3Hv;->A0D:Z

    iget-object v0, p0, LX/3Hv;->A09:Ljava/lang/String;

    invoke-virtual {p0, v0}, LX/3Hv;->setText(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, LX/3Hv;->A0D:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LX/3Hv;->A0D:Z

    iget-object v2, p0, LX/3Hv;->A09:Ljava/lang/String;

    const-string v1, "."

    const-string v0, "\u25cf"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getFormDataTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LX/3Hv;->A07:Ljava/lang/Object;

    return-object v0
.end method

.method public getFormInputView()Lorg/npci/commonlibrary/widget/FormItemEditText;
    .locals 1

    iget-object v0, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    return-object v0
.end method

.method public getFormItemListener()LX/2vp;
    .locals 1

    iget-object v0, p0, LX/3Hv;->A0B:LX/2vp;

    return-object v0
.end method

.method public getInputLength()I
    .locals 1

    iget v0, p0, LX/3Hv;->A00:I

    return v0
.end method

.method public getInputValue()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, LX/3Hv;->A0C:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LX/3Hv;->A0D:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LX/3Hv;->A09:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    invoke-virtual {v0}, LX/1V8;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarPositionTop(Z)V
    .locals 4

    iget-object v0, p0, LX/3Hv;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/16 v0, 0xa

    if-eqz p1, :cond_0

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object v0, p0, LX/3Hv;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v0, 0x7f0903a0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public setFormDataTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LX/3Hv;->A07:Ljava/lang/Object;

    return-void
.end method

.method public setFormItemListener(LX/2vp;)V
    .locals 0

    iput-object p1, p0, LX/3Hv;->A0B:LX/2vp;

    return-void
.end method

.method public setFormItemTag(I)V
    .locals 0

    iput p1, p0, LX/3Hv;->A01:I

    return-void
.end method

.method public setInputLength(I)V
    .locals 1

    iget-object v0, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    invoke-virtual {v0, p1}, Lorg/npci/commonlibrary/widget/FormItemEditText;->setMaxLength(I)V

    iput p1, p0, LX/3Hv;->A00:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LX/3Hv;->A0A:Lorg/npci/commonlibrary/widget/FormItemEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LX/3Hv;->A06:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, LX/3Hv;->A08:Ljava/lang/String;

    return-void
.end method
