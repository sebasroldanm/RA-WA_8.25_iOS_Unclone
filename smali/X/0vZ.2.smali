.class public LX/0vZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public A00:I

.field public A01:I

.field public final synthetic A02:Lcom/whatsapp/ReadMoreTextView;


# direct methods
.method public constructor <init>(Lcom/whatsapp/ReadMoreTextView;)V
    .locals 0

    iput-object p1, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v1, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    iget v0, v1, Lcom/whatsapp/ReadMoreTextView;->A00:I

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/whatsapp/ReadMoreTextView;->A05:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v7, v0

    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    sub-int/2addr v7, v0

    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, LX/0vZ;->A01:I

    if-ne v0, v7, :cond_1

    iget v0, p0, LX/0vZ;->A00:I

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    iput v7, p0, LX/0vZ;->A01:I

    iput v1, p0, LX/0vZ;->A00:I

    iget-object v2, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    iget-object v0, v2, Lcom/whatsapp/ReadMoreTextView;->A04:Ljava/lang/CharSequence;

    sget-object v1, Lcom/whatsapp/ReadMoreTextView;->A0C:LX/0vb;

    invoke-static {v0}, LX/1S0;->A00(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0, v2, v7}, LX/0vb;->A38(Ljava/lang/CharSequence;Landroid/widget/TextView;I)Landroid/text/Layout;

    move-result-object v3

    iget-object v8, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget-object v2, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    iget v1, v2, Lcom/whatsapp/ReadMoreTextView;->A00:I

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-le v5, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, v8, Lcom/whatsapp/ReadMoreTextView;->A06:Z

    iget-boolean v0, v2, Lcom/whatsapp/ReadMoreTextView;->A06:Z

    if-eqz v0, :cond_5

    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v0, v2, Lcom/whatsapp/ReadMoreTextView;->A03:Ljava/lang/CharSequence;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, LX/1qI;

    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    iget v0, v0, Lcom/whatsapp/ReadMoreTextView;->A01:I

    invoke-direct {v8, p0, v1, v0}, LX/1qI;-><init>(LX/0vZ;Landroid/content/Context;I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v2, 0x12

    invoke-virtual {v5, v8, v6, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    iget-boolean v0, v0, Lcom/whatsapp/ReadMoreTextView;->A07:Z

    if-eqz v0, :cond_3

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v5, v1, v6, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    iget v0, v0, Lcom/whatsapp/ReadMoreTextView;->A00:I

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lez v4, :cond_4

    iget-object v1, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    iget v0, v1, Lcom/whatsapp/ReadMoreTextView;->A00:I

    if-le v2, v0, :cond_4

    iget-object v0, v1, Lcom/whatsapp/ReadMoreTextView;->A04:Ljava/lang/CharSequence;

    invoke-interface {v0, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, "... "

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    sget-object v1, Lcom/whatsapp/ReadMoreTextView;->A0C:LX/0vb;

    invoke-static {v3}, LX/1S0;->A00(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0, v2, v7}, LX/0vb;->A38(Ljava/lang/CharSequence;Landroid/widget/TextView;I)Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-virtual {v0}, LX/1VI;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    invoke-static {v0, v3}, Lcom/whatsapp/ReadMoreTextView;->setVisibleText(Lcom/whatsapp/ReadMoreTextView;Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    invoke-virtual {v2}, LX/1VI;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    iget-object v0, v0, Lcom/whatsapp/ReadMoreTextView;->A04:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, LX/0vZ;->A02:Lcom/whatsapp/ReadMoreTextView;

    iget-object v0, v1, Lcom/whatsapp/ReadMoreTextView;->A04:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lcom/whatsapp/ReadMoreTextView;->setVisibleText(Lcom/whatsapp/ReadMoreTextView;Ljava/lang/CharSequence;)V

    return-void
.end method
