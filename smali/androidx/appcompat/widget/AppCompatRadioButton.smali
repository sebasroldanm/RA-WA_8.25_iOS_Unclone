.class public Landroidx/appcompat/widget/AppCompatRadioButton;
.super Landroid/widget/RadioButton;
.source ""

# interfaces
.implements LX/06c;
.implements LX/07F;


# instance fields
.field public final A00:LX/02W;

.field public final A01:LX/02Y;

.field public final A02:LX/02p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0401ea

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-static {p1}, LX/03n;->A00(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, LX/02Y;

    invoke-direct {v0, p0}, LX/02Y;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A01:LX/02Y;

    invoke-virtual {v0, p2, p3}, LX/02Y;->A02(Landroid/util/AttributeSet;I)V

    new-instance v0, LX/02W;

    invoke-direct {v0, p0}, LX/02W;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A00:LX/02W;

    invoke-virtual {v0, p2, p3}, LX/02W;->A06(Landroid/util/AttributeSet;I)V

    new-instance v0, LX/02p;

    invoke-direct {v0, p0}, LX/02p;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A02:LX/02p;

    invoke-virtual {v0, p2, p3}, LX/02p;->A07(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A00:LX/02W;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/02W;->A00()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A02:LX/02p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LX/02p;->A01()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A01:LX/02Y;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, LX/02Y;->A00(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A00:LX/02W;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/02W;->A01:LX/03o;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/03o;->A00:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A00:LX/02W;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/02W;->A01:LX/03o;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/03o;->A01:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A01:LX/02Y;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/02Y;->A00:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A01:LX/02Y;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/02Y;->A01:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A00:LX/02W;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/02W;->A01()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A00:LX/02W;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LX/02W;->A02(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LX/01e;->A01(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A01:LX/02Y;

    if-eqz v1, :cond_0

    iget-boolean v0, v1, LX/02Y;->A04:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, v1, LX/02Y;->A04:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, LX/02Y;->A04:Z

    invoke-virtual {v1}, LX/02Y;->A01()V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A00:LX/02W;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LX/02W;->A04(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A00:LX/02W;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LX/02W;->A05(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A01:LX/02Y;

    if-eqz v1, :cond_0

    iput-object p1, v1, LX/02Y;->A00:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, v1, LX/02Y;->A02:Z

    invoke-virtual {v1}, LX/02Y;->A01()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->A01:LX/02Y;

    if-eqz v1, :cond_0

    iput-object p1, v1, LX/02Y;->A01:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, v1, LX/02Y;->A03:Z

    invoke-virtual {v1}, LX/02Y;->A01()V

    :cond_0
    return-void
.end method
