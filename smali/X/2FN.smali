.class public final LX/2FN;
.super LX/1wE;
.source ""


# instance fields
.field public final A00:LX/0xW;


# direct methods
.method public constructor <init>(Landroid/content/Context;LX/26U;)V
    .locals 6

    invoke-direct {p0, p1, p2}, LX/1wE;-><init>(Landroid/content/Context;LX/1QA;)V

    invoke-static {}, LX/0xW;->A00()LX/0xW;

    move-result-object v0

    iput-object v0, p0, LX/2FN;->A00:LX/0xW;

    const v0, 0x7f09056c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/whatsapp/TextEmojiLabel;

    new-instance v0, LX/0sp;

    invoke-direct {v0}, LX/0sp;-><init>()V

    iput-object v0, v4, Lcom/whatsapp/TextEmojiLabel;->A07:LX/0sp;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLinksClickable(Z)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLongClickable(Z)V

    iget-object v0, p0, LX/2FN;->A00:LX/0xW;

    invoke-virtual {v0}, LX/0xW;->A01()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p2, LX/1QA;->A0g:LX/1Q8;

    iget-boolean v0, v0, LX/1Q8;->A02:Z

    const v2, 0x7f1103f3

    if-eqz v0, :cond_0

    const v2, 0x7f1103f4

    :cond_0
    iget-object v1, p0, LX/1wE;->A0r:LX/181;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v5

    invoke-virtual {v1, v2, v0}, LX/181;->A0C(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {p0, v1}, LX/1wE;->A0S(Landroid/text/Spannable;)V

    new-instance v0, LX/2E6;

    invoke-direct {v0, v4}, LX/2E6;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v4, v0}, Lcom/whatsapp/TextEmojiLabel;->setAccessibilityHelper(LX/1Wq;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getBubbleAlpha()I
    .locals 1

    const/16 v0, 0xbf

    return v0
.end method

.method public getCenteredLayoutId()I
    .locals 1

    const v0, 0x7f0c00d8

    return v0
.end method

.method public getIncomingLayoutId()I
    .locals 1

    const v0, 0x7f0c00d8

    return v0
.end method

.method public getOutgoingLayoutId()I
    .locals 1

    const v0, 0x7f0c00d9

    return v0
.end method
