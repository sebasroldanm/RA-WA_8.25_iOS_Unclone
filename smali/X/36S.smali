.class public final synthetic LX/36S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/2pK;


# instance fields
.field private final synthetic A00:Landroid/content/Intent;

.field private final synthetic A01:Lcom/whatsapp/payments/ui/MexicoPaymentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/whatsapp/payments/ui/MexicoPaymentActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/36S;->A01:Lcom/whatsapp/payments/ui/MexicoPaymentActivity;

    iput-object p2, p0, LX/36S;->A00:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final A1t(Ljava/lang/Object;)V
    .locals 5

    iget-object v4, p0, LX/36S;->A01:Lcom/whatsapp/payments/ui/MexicoPaymentActivity;

    iget-object v1, p0, LX/36S;->A00:Landroid/content/Intent;

    check-cast p1, Ljava/util/List;

    iget-object v0, v4, Lcom/whatsapp/payments/ui/MexicoPaymentActivity;->A01:Lcom/whatsapp/payments/ui/ConfirmPaymentFragment;

    if-eqz v0, :cond_1

    const-string v0, "payment_method_credential_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/1Da;

    iget-object v0, v1, LX/1Da;->A06:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/whatsapp/payments/ui/MexicoPaymentActivity;->A01:Lcom/whatsapp/payments/ui/ConfirmPaymentFragment;

    invoke-virtual {v0, v1}, Lcom/whatsapp/payments/ui/ConfirmPaymentFragment;->A0m(LX/1Da;)V

    :cond_1
    iget-object v0, v4, Lcom/whatsapp/payments/ui/MexicoPaymentActivity;->A00:LX/1so;

    invoke-virtual {v0}, LX/1so;->A02()V

    return-void
.end method
