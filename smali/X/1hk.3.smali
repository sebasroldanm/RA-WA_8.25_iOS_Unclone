.class public final synthetic LX/1hk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/03G;


# instance fields
.field private final synthetic A00:Landroid/widget/TextView;

.field private final synthetic A01:Lcom/whatsapp/DeleteAccountFeedback;


# direct methods
.method public synthetic constructor <init>(Lcom/whatsapp/DeleteAccountFeedback;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/1hk;->A01:Lcom/whatsapp/DeleteAccountFeedback;

    iput-object p2, p0, LX/1hk;->A00:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    iget-object v2, p0, LX/1hk;->A01:Lcom/whatsapp/DeleteAccountFeedback;

    iget-object v1, p0, LX/1hk;->A00:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Lcom/whatsapp/DeleteAccountFeedback;->A01:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/whatsapp/DeleteAccountFeedback;->A03:Landroid/widget/EditText;

    iget-object v3, v2, LX/2M7;->A0L:LX/181;

    iget v2, v2, Lcom/whatsapp/DeleteAccountFeedback;->A01:I

    const/4 v1, 0x2

    const v0, 0x7f1102b5

    if-ne v2, v1, :cond_0

    const v0, 0x7f1102b6

    :cond_0
    invoke-virtual {v3, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0
.end method
