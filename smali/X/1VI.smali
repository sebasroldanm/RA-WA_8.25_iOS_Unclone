.class public LX/1VI;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements LX/06c;
.implements LX/07G;
.implements LX/07A;


# instance fields
.field public A00:Ljava/util/concurrent/Future;

.field public final A01:LX/02W;

.field public final A02:LX/02n;

.field public final A03:LX/02p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LX/1VI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, LX/1VI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-static {p1}, LX/03n;->A00(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, LX/02W;

    invoke-direct {v0, p0}, LX/02W;-><init>(Landroid/view/View;)V

    iput-object v0, p0, LX/1VI;->A01:LX/02W;

    invoke-virtual {v0, p2, p3}, LX/02W;->A06(Landroid/util/AttributeSet;I)V

    new-instance v0, LX/02p;

    invoke-direct {v0, p0}, LX/02p;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, LX/1VI;->A03:LX/02p;

    invoke-virtual {v0, p2, p3}, LX/02p;->A07(Landroid/util/AttributeSet;I)V

    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    invoke-virtual {v0}, LX/02p;->A01()V

    new-instance v0, LX/02n;

    invoke-direct {v0, p0}, LX/02n;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, LX/1VI;->A02:LX/02n;

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, LX/1VI;->A01:LX/02W;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/02W;->A00()V

    :cond_0
    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LX/02p;->A01()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    sget-boolean v0, LX/07A;->A00:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_1

    iget-object v0, v0, LX/02p;->A0C:LX/02q;

    iget v0, v0, LX/02q;->A00:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    sget-boolean v0, LX/07A;->A00:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_1

    iget-object v0, v0, LX/02p;->A0C:LX/02q;

    iget v0, v0, LX/02q;->A01:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    sget-boolean v0, LX/07A;->A00:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_1

    iget-object v0, v0, LX/02p;->A0C:LX/02q;

    iget v0, v0, LX/02q;->A02:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    sget-boolean v0, LX/07A;->A00:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_1

    iget-object v0, v0, LX/02p;->A0C:LX/02q;

    iget-object v0, v0, LX/02q;->A07:[I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3

    sget-boolean v0, LX/07A;->A00:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/02p;->A0C:LX/02q;

    iget v0, v0, LX/02q;->A03:I

    return v0
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v1, v0

    return v1
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, LX/1VI;->A01:LX/02W;

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

    iget-object v0, p0, LX/1VI;->A01:LX/02W;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/02W;->A01:LX/03o;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/03o;->A01:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    iget-object v0, v0, LX/02p;->A08:LX/03o;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/03o;->A00:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    iget-object v0, v0, LX/02p;->A08:LX/03o;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/03o;->A01:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    iget-object v1, p0, LX/1VI;->A00:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, LX/1VI;->A00:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/06D;

    invoke-static {p0, v0}, LX/03w;->A0u(Landroid/widget/TextView;LX/06D;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge v1, v0, :cond_0

    iget-object v0, p0, LX/1VI;->A02:LX/02n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/02n;->A00()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public getTextMetricsParamsCompat()LX/06C;
    .locals 1

    invoke-static {p0}, LX/03w;->A0L(Landroid/widget/TextView;)LX/06C;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, LX/01Y;->A1E(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-object v1, p0, LX/1VI;->A03:LX/02p;

    if-eqz v1, :cond_0

    sget-boolean v0, LX/07A;->A00:Z

    if-nez v0, :cond_0

    iget-object v0, v1, LX/02p;->A0C:LX/02q;

    invoke-virtual {v0}, LX/02q;->A04()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget-object v1, p0, LX/1VI;->A00:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, LX/1VI;->A00:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/06D;

    invoke-static {p0, v0}, LX/03w;->A0u(Landroid/widget/TextView;LX/06D;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v1, p0, LX/1VI;->A03:LX/02p;

    if-eqz v1, :cond_0

    sget-boolean v0, LX/07A;->A00:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, LX/02p;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, LX/02p;->A0C:LX/02q;

    invoke-virtual {v0}, LX/02q;->A04()V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    sget-boolean v0, LX/07A;->A00:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, LX/02p;->A03(IIII)V

    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    sget-boolean v0, LX/07A;->A00:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LX/02p;->A08([II)V

    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    sget-boolean v0, LX/07A;->A00:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LX/02p;->A02(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, LX/1VI;->A01:LX/02W;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/02W;->A01()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, LX/1VI;->A01:LX/02W;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LX/02W;->A02(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/02p;->A01()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/02p;->A01()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    invoke-static {v4, p1}, LX/01e;->A01(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {v4, p2}, LX/01e;->A01(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-static {v4, p3}, LX/01e;->A01(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    if-eqz p4, :cond_0

    invoke-static {v4, p4}, LX/01e;->A01(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    invoke-virtual {p0, v2, v1, v0, v3}, LX/1VI;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LX/02p;->A01()V

    :cond_1
    return-void

    :cond_2
    move-object v0, v3

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_0
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/02p;->A01()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    invoke-static {v4, p1}, LX/01e;->A01(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {v4, p2}, LX/01e;->A01(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-static {v4, p3}, LX/01e;->A01(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    if-eqz p4, :cond_0

    invoke-static {v4, p4}, LX/01e;->A01(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    invoke-virtual {p0, v2, v1, v0, v3}, LX/1VI;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LX/02p;->A01()V

    :cond_1
    return-void

    :cond_2
    move-object v0, v3

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_0
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/02p;->A01()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    invoke-static {p0, p1}, LX/03w;->A0I(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt v1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void

    :cond_0
    invoke-static {p0, p1}, LX/03w;->A0n(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt v1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    return-void

    :cond_0
    invoke-static {p0, p1}, LX/03w;->A0o(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLineHeight(I)V
    .locals 0

    invoke-static {p0, p1}, LX/03w;->A0p(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setPrecomputedText(LX/06D;)V
    .locals 0

    invoke-static {p0, p1}, LX/03w;->A0u(Landroid/widget/TextView;LX/06D;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, LX/1VI;->A01:LX/02W;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LX/02W;->A04(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, LX/1VI;->A01:LX/02W;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LX/02W;->A05(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v2, p0, LX/1VI;->A03:LX/02p;

    iget-object v0, v2, LX/02p;->A08:LX/03o;

    if-nez v0, :cond_0

    new-instance v0, LX/03o;

    invoke-direct {v0}, LX/03o;-><init>()V

    iput-object v0, v2, LX/02p;->A08:LX/03o;

    :cond_0
    iget-object v1, v2, LX/02p;->A08:LX/03o;

    iput-object p1, v1, LX/03o;->A00:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, v1, LX/03o;->A02:Z

    iput-object v1, v2, LX/02p;->A05:LX/03o;

    iput-object v1, v2, LX/02p;->A09:LX/03o;

    iput-object v1, v2, LX/02p;->A06:LX/03o;

    iput-object v1, v2, LX/02p;->A03:LX/03o;

    iput-object v1, v2, LX/02p;->A07:LX/03o;

    iput-object v1, v2, LX/02p;->A04:LX/03o;

    invoke-virtual {v2}, LX/02p;->A01()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget-object v2, p0, LX/1VI;->A03:LX/02p;

    iget-object v0, v2, LX/02p;->A08:LX/03o;

    if-nez v0, :cond_0

    new-instance v0, LX/03o;

    invoke-direct {v0}, LX/03o;-><init>()V

    iput-object v0, v2, LX/02p;->A08:LX/03o;

    :cond_0
    iget-object v1, v2, LX/02p;->A08:LX/03o;

    iput-object p1, v1, LX/03o;->A01:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, v1, LX/03o;->A03:Z

    iput-object v1, v2, LX/02p;->A05:LX/03o;

    iput-object v1, v2, LX/02p;->A09:LX/03o;

    iput-object v1, v2, LX/02p;->A06:LX/03o;

    iput-object v1, v2, LX/02p;->A03:LX/03o;

    iput-object v1, v2, LX/02p;->A07:LX/03o;

    iput-object v1, v2, LX/02p;->A04:LX/03o;

    invoke-virtual {v2}, LX/02p;->A01()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, LX/1VI;->A03:LX/02p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LX/02p;->A04(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge v1, v0, :cond_0

    iget-object v0, p0, LX/1VI;->A02:LX/02n;

    if-eqz v0, :cond_0

    iput-object p1, v0, LX/02n;->A00:Landroid/view/textclassifier/TextClassifier;

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, LX/1VI;->A00:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTextMetricsParamsCompat(LX/06C;)V
    .locals 5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_1

    iget-object v4, p1, LX/06C;->A03:Landroid/text/TextDirectionHeuristic;

    sget-object v3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x1

    if-eq v4, v3, :cond_0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq v4, v1, :cond_0

    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v0, :cond_3

    const/4 v2, 0x2

    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_8

    iget-object v0, p1, LX/06C;->A04:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v0, p1, LX/06C;->A04:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    return-void

    :cond_3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v0, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v0, :cond_5

    const/4 v2, 0x4

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v0, :cond_6

    const/4 v2, 0x5

    goto :goto_0

    :cond_6
    if-ne v4, v1, :cond_7

    const/4 v2, 0x6

    goto :goto_0

    :cond_7
    if-ne v4, v3, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v0, p1, LX/06C;->A04:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget v0, p1, LX/06C;->A00:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    iget v0, p1, LX/06C;->A01:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    sget-boolean v0, LX/07A;->A00:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, LX/1VI;->A03:LX/02p;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LX/02p;->A09()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, LX/02p;->A0C:LX/02q;

    invoke-virtual {v0, p1, p2}, LX/02q;->A06(IF)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, LX/05e;->A00(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
